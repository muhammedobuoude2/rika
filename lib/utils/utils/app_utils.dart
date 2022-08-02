import 'package:get/get.dart';

class AppUtils {
  AppUtils._internal();
  static final AppUtils instance = AppUtils._internal();

  bool isValidateEmail({required String email}) {
    return GetUtils.isEmail(email);
  }

  bool isValidatePassword({required String password}) {
    if (password.length > 8 ||
        password.contains(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')) {
      return true;
    }
    return false;
  }
}
