import 'dart:math';

class StrengthChecker {
  static double getPasswordStrength(String password) {
    if (password.isEmpty) return 0;
    double pFraction;
    if (RegExp(r'^[0-9]*$').hasMatch(password)) {
      pFraction = 0.8;
    } else if (RegExp(r'^[a-zA-Z0-9]*$').hasMatch(password)) {
      pFraction = 1.5;
    } else if (RegExp(r'^[a-z]*$').hasMatch(password)) {
      pFraction = 1.0;
    } else if (RegExp(r'^[a-zA-Z]*$').hasMatch(password)) {
      pFraction = 1.3;
    } else if (RegExp(r'^[a-z\-_!?]*$').hasMatch(password)) {
      pFraction = 1.3;
    } else if (RegExp(r'^[a-z0-9]*$').hasMatch(password)) {
      pFraction = 1.2;
    } else {
      pFraction = 1.8;
    }
    logF(double x) => 1.0 / (1.0 + exp(-x));
    logC(double x) => logF((x / 2.0) - 4.0);
    return logC(password.length * pFraction);
  }

  static String getPasswordValidations(
      {required String weakTitle,
      required String mediumTitle,
      required String strongTitle,
      required String defaultTitle,
      required String password}) {
    double s = getPasswordStrength(password);
    if (s < 0.3) {
      return weakTitle;
    } else if (s > 0.3 && s < 0.6) {
      return mediumTitle;
    } else if (s > 0.6) {
      return strongTitle;
    } else {
      return defaultTitle;
    }
  }
}
