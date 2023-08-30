// 正則參數表
const String accountPattern =
    r'^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$';
const String emailPattern =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

/// 正則表達式驗證器
class RegexValidator {
  final String pattern;

  RegexValidator(this.pattern);

  bool isValid(String value) {
    final regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
