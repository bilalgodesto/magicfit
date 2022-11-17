import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:magic_fit/views/login_form.dart';

void main() {
  testWidgets('enter email and password and login',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginForm()));
    var emailField = find.byKey(const ValueKey('email'));
    expect(emailField, findsOneWidget);
    var passwordField = find.byKey(const ValueKey('password'));
    expect(passwordField, findsOneWidget);

    await tester.enterText(emailField, 'bilal@magic.fit');
    await tester.enterText(passwordField, '123456');

    expect(find.text('123456'), findsOneWidget);
    var loginButton = find.byKey(
      const ValueKey('login'),
    );

    expect(loginButton, findsOneWidget);

    await tester.tap(loginButton);
    await tester.pump(); // wait for one frame
    // expect(printLog[0], contains('success'));
    //inspect(object)
    //expect(inspect(''), matcher)
  });
}
