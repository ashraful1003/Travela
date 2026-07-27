Engineering Guidelines for Travela

Purpose
This document establishes the engineering foundation and conventions for the Travela Flutter app (SSE-based travel property search). It is the single source of truth for how code is organized, written, documented, tested, and scaled. Follow this document in every sprint.

High-level principles
- Feature-first, Clean Architecture (Presentation → Domain → Data → Remote → Dio)
- Single responsibility & small modules
- Explicit dependencies via constructor injection
- Immutable domain objects
- Testability and separation of concerns
- Prefer composition over inheritance
- Avoid global mutable state

1) Recommended folder structure (feature-first)
- Top-level view (inside `lib/`)

lib/
  core/                      // Cross-cutting, app-level utilities and definitions (ONLY reusable infra shared across features — see Core Ownership Rule)
    analytics/
    errors/
    network/
    di/
    logger/
    constants/
    extensions/
    utils/
    widgets/                 // truly generic shared widgets (buttons, chips)
    theme/

  Core Ownership Rule: Core should contain only reusable infrastructure that is shared across multiple features. Feature-specific helpers, validators, formatters, constants, extensions, and utilities MUST remain inside their respective feature folders. Avoid turning `lib/core/` into a dumping ground — move code into feature folders unless it is truly cross-cutting and reused.
  features/
    feature_name/
      presentation/
        bloc/
        pages/
        widgets/
      domain/
        entities/
        repositories/
        usecases/
      data/
        datasources/
        models/
        repositories/
        mappers/
      di/
  Every future feature MUST follow this exact structure.
  app.dart
  main.dart

- Tests mirror `lib/` structure under `test/` with same relative paths (e.g., `test/features/property_search/domain/usecases/..._test.dart`).

2) Responsibility of every folder
- `lib/core/analytics/`: analytics adapters, tracking wrappers (abstracted behind interfaces).
- `lib/core/errors/`: domain `Failure` types, exception -> failure mappers.
- `lib/core/network/`: HTTP helpers, interceptors, SSE helpers (non-feature-specific).
- `lib/core/di/`: app-level dependency registry and helper functions for module initialization.
- `lib/core/logger/`: centralized logging wrapper and formatters.
- `lib/core/constants/`: global constants, environment keys.
- `lib/core/extensions/`: small, well-scoped extension methods.
- `lib/core/utils/`: pure utility functions.
- `lib/core/widgets/`: truly reusable UI widgets used across multiple features.
- `lib/core/theme/`: app theme, color, typographic tokens.
- `lib/features/<feature>/presentation/`: UI layer (screens/pages, composed widgets, Bloc/Cubit).
- `lib/features/<feature>/domain/`: business rules — entities, repository interfaces, use cases.
- `lib/features/<feature>/data/`: implementations — remote/local data sources, models/DTOs, repository implementations, data mappers.
- `lib/app.dart` and `lib/main.dart`: app bootstrap and top-level wiring only.

3) Responsibility of every layer (Clean Architecture)
- Presentation
  - Widgets, pages, and UI state management (Bloc/Cubit).
  - Converts user input to use case invocation.
  - Receives domain data (entities) to render views; maps domain entities to view models only if needed.
- Domain
  - Entities: core business objects, pure and framework-agnostic.
  - Repository interfaces: abstract contracts used by use cases.
  - Use cases (interactors): single-purpose application actions — orchestrate domain logic, return domain outputs or failures.
- Data
  - Models/DTOs and mappers: JSON ↔ DTO/Model ↔ Entity transformations. Mapping policy (strict):
      JSON
      ↓
      DTO / Model
      ↓
      Entity
      ↓
      Presentation

    Presentation must never directly consume DTOs/Models. Repositories are responsible for converting Models into Domain Entities. Mappers live in `data/mappers/` and models should provide `.toEntity()` where appropriate.
  - Data source interfaces & implementations: remote (SSE/HTTP), local (cache).
  - Repository implementations: combine data sources, convert exceptions to failures.
- Remote Data Sources
  - Small classes responsible only for network calls (Dio), SSE streaming parsing and raw DTO creation.
- Dio
  - Configured centrally (interceptors, timeouts, baseUrl) and provided through DI.

3.1) Dependency rules
- Allowed dependency direction (top → bottom):
  Presentation
  ↓
  Domain
  ↓
  Data
  ↓
  Core

- Forbidden dependency directions:
  ❌ Domain → Presentation
  ❌ Data → Presentation
  ❌ Core → Feature
  ❌ Feature → Feature (unless explicitly shared through Domain abstractions)

Explanation: The dependency graph must flow inward: Presentation depends on Domain abstractions, Domain defines repository interfaces and entities, Data implements those interfaces and depends on Core for reusable infra. Core must never depend on feature code. Feature-to-feature coupling is forbidden; shared behavior should be exposed via Domain abstractions or moved into Core only if it is truly cross-cutting and reused. Enforce these rules in code reviews and via import checks.

4) Naming conventions
- Files: snake_case (e.g., `property_search_bloc.dart`, `property_model.dart`).
- Classes: PascalCase (e.g., `PropertySearchBloc`, `PropertyModel`).
- Interfaces/abstract classes: no enforced `I` prefix — prefer `PropertyRepository` (abstract) and `PropertyRepositoryImpl` (implementation). Either style may be chosen, but be consistent across project.
- Methods/variables: lowerCamelCase.
- Constants: `kCamelCase` for widget-level constants or ALL_CAPS_WITH_UNDERSCORES for only compile-time constants? Prefer `camelCase` with a `k` prefix for widget/local constants (e.g., `kMaxItems`) and `allCaps` only for external platform constants if needed. Be consistent—document the project choice in `analysis_options.yaml`.
- Freezed union types: name unions with meaningful nouns: `PropertySearchState`, `PropertySearchEvent`.

5) Widget conventions
- Prefer composition: use small stateless widgets composed together.
- Make widgets immutable and use `const` constructors where possible.
- Separate a page (route) from sub-widgets:
  - `*Page` or `*Screen` for top-level routes.
  - `*View` for the main content of a page used in different contexts.
  - `*Widget` for small reusable components.
- Keep build methods short: < 120 lines ideally. If logic grows, extract sub-widgets.
- Provide a small, documented public API (constructor args). Avoid optional positional parameters; use named parameters.
- Avoid logic in widgets — keep it in BLoCs/use cases. Widgets are for UI and composition only.
- Provide `Key` parameters for any widget that may be targeted in tests or reordered in lists.
- For lists, use `ListView.builder` and `const` where possible.
- Accessibility: always provide semantics where needed (labels for icons, buttons).
- Provide `onTap`/`onPressed` callbacks rather than injecting navigation; navigation should be done at a higher level (e.g., page or Bloc effect).

6) Bloc conventions
- Use `flutter_bloc` for global or feature-level complex state, `Cubit` for simple stateful widgets.
- File names:
  - `feature_bloc.dart` — the Bloc class itself.
  - `feature_event.dart` — event definitions.
  - `feature_state.dart` — state definitions.
- Preferred state approach: use a single immutable state object per Bloc containing fields such as:
    - `status` (enum or small value object indicating state)
    - `data` (domain/entities/viewmodels)
    - `failure` (optional Failure)
    - loading flags (e.g., `isLoading`, `isRefreshing`)
    - completion flags (e.g., `isCompleted`, `hasMore`)
  Keep the state flat and composable; avoid proliferating many independent state classes. This improves maintainability, simplifies state updates, and makes testing and serialization easier.
- Use Freezed unions only when a true mutually exclusive sealed-case is required (e.g., complex lifecycle with distinct shapes). Prefer the single-state-object pattern for most feature Blocs.
- Bloc responsibilities:
  - Translate UI events to use case calls.
  - Emit the single immutable state object with updated fields (map Domain -> ViewModel at presentation if necessary).
  - Manage subscriptions: cancel SSE subscriptions on `close()` or when no longer needed.
- Side effects (navigation, dialogs) should be exposed as Bloc outputs (e.g., `BlocListener` + `OneShot` events) rather than directly invoked inside widgets.
- Testing: each bloc must have unit tests for events → expected states, and verify side effects (stream subscription lifecycle).
- Naming: bloc class `PropertySearchBloc`, event `PropertySearchEvent`, state `PropertySearchState`.

7) UseCase conventions
- One use-case per class; every use case must extend the common abstract `UseCase` base class and expose a single public method:
    call(Params params)
  This standardizes invocation and improves testability and discoverability.
- Use cases live in `features/<feature>/domain/usecases/`.
- Input arguments are minimal; prefer a single `Params` value object when multiple inputs are required.
- Return type: Use the project standard `Either<Failure, T>` for all Domain-layer Future/one-off operations. Repositories and UseCases must return `Either<Failure, T>` (see Standard Result Type). Streaming operations return `Stream<Either<Failure, T>>`.
- Use cases do not know about presentation or data layer details. They depend only on repository interfaces.
- Keep them testable by injecting repositories.

8) Repository conventions
- Define repository interfaces in `domain/repositories/` (e.g., `property_repository.dart`).
- Implementations in `data/repositories/` (e.g., `property_repository_impl.dart`).
- Repositories translate data-source exceptions to domain `Failure`s and map DTOs to Entities.
- Do not expose data-layer models from repository methods — always return Entities (domain models).
- Repositories expose both immediate-return and streaming contracts where needed:
  - For SSE/streaming: repositories MUST expose streams as `Stream<Either<Failure, T>>` (where `T` is the domain entity or domain DTO) so that errors are represented in-band. For cases where a raw stream of domain entities is desired, document the error-handling strategy clearly and prefer `Stream<Either<Failure, T>>`.
  - If both streaming and one-off responses are used, provide clearly named methods (e.g., `Stream<Either<Failure, PropertySearchUpdate>> getPropertySearchStream(...)` and `Future<Either<Failure, List<Property>>> searchPropertiesOnce(...)`).
- Keep repository methods coarse-grained and meaningful for the domain.

9) DataSource conventions
- Files in `data/datasources/`:
  - `property_remote_data_source.dart` — HTTP and SSE interactions via Dio.
  - `property_local_data_source.dart` — cache/persistence (if required).
- Remote data source:
  - Does raw network calls and returns DTOs.
  - Exposes streams for SSE: raw streaming DTOs or parsed DTO events.
  - Is responsible for parsing network-level errors into low-level exceptions (e.g., `NetworkException`, `SSEException`).
  - Does not contain business logic; only network concerns.
- Local data source:
  - Responsible for caching, read/write from local storage; keep use of third-party storage libs behind interface.
- Keep data sources small and focused. Unit-test data source behaviors with mocked Dio.

10) Model conventions
- Use `freezed` + `json_serializable` for data models (DTOs).
- Data models (DTOs) live in `features/<feature>/data/models/` and have `*Model` suffix, e.g., `property_model.dart`.
- Keep JSON keys explicit via `@JsonKey` when necessary; avoid loose parsing.
- Provide `toEntity()` conversion methods on models or have mappers in `data/mappers/`.
- Avoid domain-only logic in models; keep them as pure serialization/deserialization holders.

11) Entity conventions
- Entities live in `features/<feature>/domain/entities/`.
- Entities are immutable, minimal, and represent domain-level concepts. Prefer using `freezed` for immutability and equality.
- Domain entities should not import `json_serializable` or Dio, they must be independent.
- Entities should contain only domain-level fields and derived read-only getters if required.

12) Error handling conventions
- Define a central domain `Failure` type hierarchy in `lib/core/errors/` (e.g., `NetworkFailure`, `SSEFailure`, `ParsingFailure`, `CacheFailure`, `UnexpectedFailure`).
- Data layer throws specific exceptions (e.g., `NetworkException`, `SSEException`, `ApiException`), not `Failure`s.
- Repository implementations map exceptions → `Failure`.
- Use-case returns either `Failure` or `Entity` (or wrapped `Result`). Presentation layer consumes `Failure` to emit user-facing states.
- Avoid throwing exceptions into the UI; catch and map to failures before reaching Bloc.
- For streaming (SSE):
  - Signal stream errors in a controlled way: send failure events/state rather than letting the stream crash without handling.
  - Implement retry/reconnect/backoff strategies centrally, and expose state transitions (reconnecting, connected, disconnected).
- Always capture and log stack traces for unexpected errors, but do not leak implementation or sensitive data to UI.

13) Dependency Injection conventions
- Use `get_it` for DI.
- Central app-level DI file: `lib/core/di/injection_container.dart` or `lib/core/di/service_locator.dart`.
- Feature-level DI: each feature exposes an `init<PropertyFeature>Module()` function (e.g., `initPropertySearchFeature`) in `features/property_search/di/` that registers feature-specific bindings. App-level init calls feature inits as needed.
- Registration guidelines:
  - Data sources: `registerLazySingleton` or `registerSingleton` depending on state.
  - Repositories: `registerLazySingleton<PropertyRepository>(() => PropertyRepositoryImpl(...))`
  - Use cases: `registerFactory` if they are stateless, `registerLazySingleton` if they can be reused.
  - Blocs: register with `registerFactory` for UI-scope Bloc creation (so each widget gets fresh instance).
- Do not call `GetIt.instance.get<T>()` inside constructors; use constructor injection with DI at composition roots. Keep constructors pure.
- For testing, expose the ability to override registrations easily.
- Keep DI initialization pure and idempotent — safe to call multiple times only if guarded (e.g., `if (!GetIt.I.isRegistered<T>())`).

14) Logging conventions
- Centralized logging wrapper in `lib/core/logger/`.
- Use structured logs with levels: DEBUG, INFO, WARN, ERROR, FATAL.
- In development: log detailed messages including stack traces for errors.
- In production: log minimal useful context and ensure PII is redacted.
- Include contextual metadata (request id, correlation id, feature, environment).
- For streaming SSE logs:
  - Log connection lifecycle: open, message, heartbeat, reconnect attempts, errors.
  - Log message sizes and parsing errors (without dumping full payload if that contains sensitive info).
- Do not log secrets or raw auth tokens.
- Consider integrating with remote log aggregation (Sentry, Datadog) via a logger adapter.

15) Import ordering conventions
- Follow grouping and order:
 1. Dart SDK imports (e.g., `dart:async`, `dart:convert`)
 2. Third-party packages (e.g., `package:flutter/material.dart`, `package:flutter_bloc/flutter_bloc.dart`)
 3. Absolute project imports (package:travela/...)
 4. Relative imports (only for same-directory private helpers; avoid crossing feature boundaries with relative imports)
- Within each group, alphabetize imports.
- Separate groups with a single blank line.
- Prefer package imports over relative imports for project files (use `package:travela/...`).
- Keep import statements minimal; use `show` or `hide` only when necessary to avoid name collisions.

16) File naming conventions
- Use snake_case for file names.
- Widget/presentation files:
  - `feature_page.dart`, `feature_view.dart`, `feature_widget.dart`
  - Bloc files: `feature_bloc.dart`, `feature_event.dart`, `feature_state.dart`
- Domain files:
  - `search_properties_usecase.dart`
  - `property_repository.dart`
  - `property.dart` for entity if single entity in file
- Data files:
  - `property_model.dart`, `property_remote_data_source.dart`, `property_repository_impl.dart`
- Tests: `<name>_test.dart` in mirror structure.

17) State management guidelines
- Use BLoC (flutter_bloc) as the standard state-management approach for features and business flows.
- Use Cubit for trivial state management (local UI toggles, simple form validation).
- Keep Bloc states small; prefer normalization (e.g., separate paging state fields).
- For streaming SSE:
  - Streams should be exposed by repository as `Stream<T>` and consumed by Bloc.
  - Bloc should manage subscription lifecycle (subscribe on event, cancel on close).
  - Use debouncing / throttling for UI-triggered search inputs to avoid flooding SSE/HTTP.
- Avoid storing large collections directly in state where possible; normalize and page.
- Use equatable/freezed to minimize unnecessary rebuilds by enabling proper equality checks.

18) Code documentation guidelines
- Use Dartdoc comments (`///`) on all public classes, public methods, and complex functions.
- Keep docs concise:
  - What it does, key parameters, return values, side effects (if any), and thrown exceptions/Failures.
- Document expected stream behaviors and lifecycle for SSE functions (e.g., reconnection behavior).
- Add usage examples for complex public APIs in docs.
- Keep inline comments for non-obvious logic but prefer expressive names over comments describing what code does.
- Keep docs up-to-date: update docblocks when behavior changes.

19) Performance guidelines
- UI
  - Use `const` constructors where possible.
  - Avoid rebuilding entire widget trees; use `BlocBuilder` and `BlocSelector` to rebuild smaller parts.
  - Use `ListView.builder`, `CacheExtent`, and pagination for long lists.
  - Use `RepaintBoundary` when appropriate for heavy visual subtrees.
  - Avoid deep widget nesting in a single build method; extract sub-widgets.
- SSE & Networking
  - Parse messages incrementally and off the main thread if parsing is heavy (`compute()`).
  - Buffer or debounce bursty SSE messages; expose the chosen behavior in domain contracts (e.g., sample or batch).
  - Properly close/cancel SSE subscriptions to avoid leaks.
  - Apply backpressure strategies for incoming streams (throttle, buffer, drop, or sample) and make them configurable.
- Memory
  - Dispose controllers, subscriptions, and cancel timers.
  - Use lazy loading and avoid caching very large data sets in memory.
- Startup
  - Keep `main()` bootstrapping minimal; lazy init heavy services after initial route is ready.
- Profiling
  - Add guidelines for using Flutter DevTools, observatory traces, and identify hotspots.

20) SOLID principles & how to apply them
- Single Responsibility: one reason to change per class; separate UI, business, and data concerns.
- Open/Closed: code should be open for extension (abstract repos, DI) but closed for modification.
- Liskov Substitution: repository implementations must be substitutable for interfaces.
- Interface Segregation: small, focused interfaces—avoid huge repository interfaces. Split into separate small interfaces when needed.
- Dependency Inversion: higher-level layers depend on abstractions (domain) not concrete data implementations (use DI and repository interfaces).

21) Rules for reusable widgets
- Located in `lib/core/widgets/` or `lib/features/<feature>/presentation/widgets/` only if feature-specific.
- Reusable widgets must:
  - Have minimal public API and document each parameter.
  - Be fully stateless if possible; stateful only when necessary.
  - Accept styling/customization through parameterized `TextStyle`, `EdgeInsets`, and optional `Widget` slots (like `leading`, `trailing`).
  - Provide `Key` parameter for testing.
  - Be unit/widget tested and accessible (semantics).
  - Not reference feature-specific repositories/DI; remain UI-only.
- Versioning: breaking changes to core widgets must be coordinated and documented.

22) Rules for extensions
- Keep small, focused, and safe: prefer short names and avoid clashes with built-in names.
- Group in `lib/core/extensions/` and named by type, e.g., `string_extensions.dart`, `iterable_extensions.dart`.
- Document each extension and use sparingly — extensions can make code harder to read if overused.
- Do not put heavy logic, side-effectful operations, or async work into extensions. Extensions should be pure helper methods.

23) Rules for utilities
- Utilities are pure functions or stateless helpers.
- Place in `lib/core/utils/`.
- Keep them small and testable. Example categories: `date_utils.dart`, `formatters.dart`, `validators.dart`.
- Avoid global state in utilities. If a helper needs configuration, consider making it a service registered in DI.

24) Rules for constants
- Global app constants: `lib/core/constants/app_constants.dart` only for global values.
- Theme tokens (colors, fonts) under `lib/core/theme/`.
- Feature-level constants live inside the feature folder (`features/<feature>/constants/`).
- Avoid scattering magic numbers/strings — create a named constant and document it.
- For environment-specific values (API keys, base URLs), use compile-time or CI-driven environment configuration and don’t commit secrets to source.

25) Project scaling strategy
- Keep feature modules self-contained and small. When features grow:
  - Break large features into sub-features with their own domain/data/presentation folders.
  - Move extremely large shared code into `lib/core/` or separate packages.
- If the app grows into multiple apps or many large features:
  - Evaluate splitting into multiple packages within a mono-repo (e.g., `packages/ui_components`, `packages/network`, `packages/domain_models`) to encourage reuse and faster CI cache.
- CI/CD
  - Enforce formatting (`dart format`), static analysis (`dart analyze`), and tests (`flutter test`) on PRs.
  - Use selective tests for feature changes where appropriate.
- Versioning and release
  - Use semantic versioning for packages; for the app keep release notes and changelog.
- Performance and observability
  - Integrate APM and crash reporting early (Sentry, Firebase) with data privacy practices.
- Documentation & Onboarding
  - Keep a `README.md` per major folder and one high-level repository `README.md` describing architecture and how to add a new feature (boilerplate steps).
  - Template PR checklist to ensure standards are applied.

Additional practical conventions & examples (concrete patterns you must follow)
- Feature DI: every feature provides `initFeature()` that registers the feature's data sources, repositories, and use cases. The app-level DI calls each feature's init during bootstrapping or delayed-initialization.
- Repository naming: `property_repository.dart` (interface), `property_repository_impl.dart` (impl).
- Data model naming: `property_model.dart` (DTO), `property_mapper.dart` (mapping helpers).
- Bloc naming: `property_search_bloc.dart`, `property_search_event.dart`, `property_search_state.dart`.
- For SSE streaming: expose repository method like `Stream<PropertyUpdate> streamPropertySearch(SearchParams params)`, and document reconnection and backpressure behavior in the method's doc comment.
- Mapping: every Model must implement `.toEntity()` and provide a static `fromJson` factory or use generated code via `freezed` + `json_serializable`. Mappers should be in `data/mappers/` when conversion logic is non-trivial. Repositories MUST perform Model → Entity conversion before returning results to the Domain layer or Presentation. Presentation must never directly consume DTOs/Models.

Testing & CI guidelines (must-follow)
- Unit tests for use cases, repositories (mock data sources), and mappers.
- Bloc tests: assert sequence of states for events and simulate SSE messages via stream controllers.
- Widget tests for presentation components and integration tests for critical flows.
- Use CI pipeline to run:
  - `dart format --set-exit-if-changed .`
  - `dart analyze`
  - `flutter test --coverage` (where possible)
- Code coverage: aim for high coverage on domain/use case logic and bloc, moderate coverage for widgets.

Security & privacy
- Never log sensitive information.
- Store secrets outside source (CI, secure key management).
- Follow GDPR/local privacy rules for analytics and network payloads.

Accessibility
- All interactive widgets must be accessible: provide `semanticLabel` and ensure contrast ratios.
- Test major flows with TalkBack/VoiceOver and keyboard navigation.

Onboarding — how to add a new feature (succinct checklist)
1. Create `features/<new_feature>/` with `presentation/`, `domain/`, `data/`.
2. Add domain entities, repository interface, and use case(s).
3. Implement data models, remote data sources, and repository impl.
4. Add Bloc/Cubit and pages in presentation.
5. Add feature-level `di/init_<feature>_di.dart` and register bindings.
6. Add unit tests for domain, data mapping, and bloc tests.
7. Add widget tests for key UI components.
8. Update top-level DI init or lazy-init the feature where appropriate.
9. Update documentation — `README.md` for new feature.

Governance & PR rules
- All PRs must include:
  - Summary of changes and design decisions.
  - Tests added/updated.
  - If public API changed, update docs and changelog.
- Code reviews check for adherence to:
  - Architecture layers separation.
  - No direct layer violations (presentation → data, not data → presentation).
  - DI usage and no direct calls to `GetIt` inside classes (except at composition root).

Appendix — quick conventions reference
- File names: snake_case
- Classes: PascalCase
- Methods/variables: lowerCamelCase
- Constants: `kCamelCase` (widget/local) or consistent project-wide choice
- Imports: dart:, packages, package:, relative
- DI containers: `lib/core/di/service_locator.dart`
- Shared widgets: `lib/core/widgets/`
- Mappers: `lib/features/.../data/mappers/`
- Tests mirror lib structure under `test/`

Final notes and next steps
- Add this document to the repo root as `ENGINEERING_GUIDELINES.md` so all contributors can reference it.
- Provide an onboarding `README.md` in `lib/features/` showing a template of what files to create for a new feature (no implementation — only filenames and where to place them).
- Enforce these rules via CI (format, analyze) and linting rules in `analysis_options.yaml`. Consider adding additional lint rules (pedantic/strict lint) to enforce naming and immutability.

If you want, I can:
- Create the `ENGINEERING_GUIDELINES.md` file in the repository with this content.
- Create small skeleton non-functional file scaffolding (only filenames and README templates) to guide future work (no implementation code).
Tell me which of those you'd like me to perform next.

---
Document generated on 2026-07-27

