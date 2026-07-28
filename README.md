# Travela — Property Search

## Running it

```
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs   # freezed/json_serializable codegen
flutter run
```

No `.env` or API keys needed — the search API is public and the base URL is
in `lib/core/config/environment.dart`.

## State management: Bloc

Went with `flutter_bloc` — two Blocs, `LocationAutocompleteBloc` and
`PropertySearchBloc`, kept separate because they have different lifecycles
(autocomplete resets on every keystroke, search survives across the whole
results screen).

Two things I had to be deliberate about because Bloc's default event
transformer runs same-type events sequentially, not "latest wins":

- **Debounce**: `queryChanged` never calls the API directly — it just
  (re)starts a timer and fires a separate `searchRequested` event when it
  elapses. If I'd awaited the API call straight from `queryChanged`, every
  keystroke would still hit the network, just serialized instead of parallel.
- **Cancelling a stream when a new search starts**: a search event handler
  stays alive (via a `Completer`) for the life of its SSE subscription so
  `emit()` is still valid while events stream in. That means two
  `searchSubmitted` events can be mid-flight at once if the user searches
  again quickly. I used a monotonically increasing `_searchGeneration` counter
  so a handler that resumes after cancelling the old subscription can tell if
  it's already stale and bail out instead of emitting into a dead search.
  Without it you'd occasionally see one card from the old query flash in
  before the new results replace it.

## SSE handling

`http`/`dio`'s streamed response body comes in as raw byte chunks that don't
line up with event boundaries — a `\n\n` frame separator can land in the
middle of a chunk. I buffer into a `StringBuffer` and only cut a frame out
once a full `\n\n` shows up in the buffer, then parse `event:`/`data:` lines
out of that frame. Cards are emitted to the Bloc as soon as each `item` frame
is parsed, not after the stream closes — that's the actual point of the
exercise, so I want to be able to show it working with a slow/throttled
connection, not just point at the code.

## Assumptions / shortcuts

- Price slider bounds are hardcoded 0–50,000 (BDT). The task mentions
  `filter_meta` in the `meta` event as the "real" source of valid ranges, but
  that only arrives *after* a search starts, and the price filter has to be
  set *before* the first search — chicken-and-egg. A real version would
  probably fetch a lightweight filter-config endpoint up front, or just widen
  the slider and not treat it as authoritative.
- `rooms` isn't exposed in the filter row — hardcoded to 1. Wasn't in the
  "must include" list and I didn't want to clutter the form.
- No "load more" — `page`/`per_page` are wired through to the request, but I
  only ever fetch page 1. `meta.pagination.next` is parsed and available on
  the metadata entity, just not consumed yet.
- No reconnect/retry-with-backoff if the connection drops mid-stream — a
  dropped connection surfaces as the error state with a manual retry button,
  which re-runs the same search from scratch rather than resuming where it
  left off.
- Only one widget test (smoke test that the app boots into the search page).
  Given more time I'd unit-test the SSE frame parser directly (feed it
  chunked byte sequences with frames split at arbitrary boundaries) and add
  bloc tests for the cancel-on-new-search race, since that's the part most
  likely to regress silently.

## What I'd improve with more time

- Pull-to-refresh / infinite scroll using `pagination.next`.
- Build the filter row dynamically from `filter_meta` instead of a fixed set.
- Retry the *specific* failed request with backoff instead of a flat retry.
- SSE parser + bloc unit tests (see above).
- Accessibility pass on the custom selectors (date range, guest counter).
