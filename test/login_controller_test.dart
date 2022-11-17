import 'package:flutter_test/flutter_test.dart';
import 'package:magic_fit/viewmodel/login_controller.dart';

void main() {
  late LoginController loginController;
  setUpAll(() {
    loginController = LoginController();
  });

  group('Login controller with valid and invalid param', () {
    test('test login controller for invalid information', () async {
      var email = 'bilal@magic.fit';
      var password = 'abcdef';
      var result = await loginController.login(email, password);
      expect(result, false);
    });
    test('test login controller for valid information', () async {
      var email = 'bilal@magic.fit';
      var password = '123456';
      var result = await loginController.login(email, password);
      expect(result, true);
    });
  });
}
