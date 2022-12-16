import 'package:techypanther/core/Constants/CustomStringExtensions.dart';

class AppValidators {
  static String? isRequiredField(String? value) {
    if (value == null || value.isEmpty) {
      return "Field cannot be empty!";
    } else {
      return null;
    }
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.isValidEmail()) {
      return "Enter a valid email address";
    } else {
      return null;
    }
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a valid password';
    }
    return null;
  }

  String? validateConfirmPassword(String? value, String? password) {
    if (value!.isEmpty) {
      return 'Please enter a valid password';
    } else if (value != password) {
      return "Password does not match!";
    }
    return null;
  }
}
