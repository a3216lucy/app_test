/// 正則表達式驗證器
class RegexValidator {
  final String pattern;

  RegexValidator(this.pattern);

  bool isValid(String value) {
    final regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
