import 'package:app_test/src/constants/regex.dart';

class RegisterFormModel {
  String username = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  // 驗證表單是否有效
  bool isValid() {
    // 表單驗證邏輯
    return username.isNotEmpty &&
        email.isNotEmpty &&
        isValidEmail(email) &&
        password.isNotEmpty &&
        isValidPassword(password) &&
        confirmPassword.isNotEmpty &&
        isValidPassword(confirmPassword) &&
        isSamePassword(password, confirmPassword);
    // 添加其他字段的驗證邏輯
  }

  // 驗證電子郵件格式是否有效
  bool isValidEmail(String email) {
    // 電子郵件格式驗證邏輯
    return RegexValidator(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .isValid(email);
  }

  // 自定義驗證方法，用於驗證密碼是否符合要求
  bool isValidPassword(String password) {
    // 密碼驗證邏輯，密碼至少需要6個字符
    return password.length >= 6;
  }

  // 驗證密碼與密碼確認是否相同
  bool isSamePassword(String password, String confirmPassword) {
    // 回傳是否相同
    return password.compareTo(confirmPassword) == 0;
  }
}
