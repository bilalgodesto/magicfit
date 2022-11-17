import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:magic_fit/views/dashboard.dart';
import 'package:magic_fit/views/login_form.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  //late NavigatorObserver mockObserver;
  setUpAll(() {
    //  mockObserver = MockNavigatorObserver();
  });

  group('end-to-end test', () {
    testWidgets('enter email and password to login',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: LoginForm(),
      ));
      var emailField = find.byKey(const ValueKey('email'));
      expect(emailField, findsOneWidget);
      var passwordField = find.byKey(const ValueKey('password'));
      expect(passwordField, findsOneWidget);
      await Future.delayed(
        const Duration(seconds: 3),
      );
      await tester.enterText(emailField, 'bilal@magic.fit');

      await tester.enterText(passwordField, '123456');

      expect(find.text('123456'), findsOneWidget);
      var loginButton = find.byKey(
        const ValueKey('login'),
      );

      expect(loginButton, findsOneWidget);

      await tester.tap(loginButton);
      await Future.delayed(
        const Duration(seconds: 3),
      );

      expect(find.byKey(const ValueKey('dashboard')), findsOneWidget);
    });

    testWidgets('Tap profile button to view profile',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: Dashboard()));
      var viewProfileButton = find.byKey(const ValueKey('view_profile'));
      expect(viewProfileButton, findsOneWidget);

      await tester.tap(viewProfileButton);
      await tester.pump(
        const Duration(seconds: 1),
      );
      expect(find.byKey(const ValueKey('profile')), findsOneWidget);

      //var dashbord = find.byKey( const ValueKey('dashboard'));
    });
  });
}
