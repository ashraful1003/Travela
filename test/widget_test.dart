// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:travela/app.dart';
import 'package:travela/core/di/service_locator.dart';
import 'package:travela/features/property_search/di/property_di.dart';

void main() {
  setUpAll(() async {
    // PropertySearchPage resolves its Blocs from GetIt, same as `main()`.
    await setupDependencies();
    await initPropertySearchModule(sl);
  });

  testWidgets('App boots directly into the Property Search feature', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // The home route must resolve to the real feature page (not a dead-end
    // placeholder), shown by its AppBar title and its search form.
    expect(find.text('Property Search'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
  });
}
