import 'package:flutter_test/flutter_test.dart';
import 'package:meta_validator/meta_validator.dart';

void main() {
  test('execute package', () {
    expect(StrengthChecker.getPasswordStrength("aaa"), 0.14804719803168948);
    String result = StrengthChecker.getPasswordValidations(
        password: "aaa",
        defaultTitle: "DEFAULT",
        mediumTitle: "MEDIUM",
        strongTitle: "STRONG",
        weakTitle: "WEAK");
    expect(result, "WEAK");
    expect(StringValidator.validateEmail("fakeemail"), false);
    expect(StringValidator.validateEmail("realemail@gmail.com"), true);
    expect(StringValidator.validatePostalCode("fakecode"), false);
    expect(
        StringValidator.validateBlacklisted(["apple", "ball"], "ball"), true);
  });
}
