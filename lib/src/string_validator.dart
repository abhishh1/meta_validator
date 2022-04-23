class StringValidator {
  static validatePhone(String inputString) => _phoneRegex.hasMatch(inputString);
  static validatePostalCode(String inputString) =>
      _postalCodeRegex.hasMatch(inputString);
  static validateEmail(String inputString) => _emailRegex.hasMatch(inputString);
  static validateUrl(String inputString) => _urlRegex.hasMatch(inputString);
  static validateCurrency(String inputString) =>
      _currencyRegex.hasMatch(inputString);
  static validateIpAddress(String inputString) =>
      _ipRegex.hasMatch(inputString);
  static validateDate(String inputString) => _dateRegex.hasMatch(inputString);
  static validateTime(String inputString) => _timeRegex.hasMatch(inputString);
  static validateCreditCard(String inputString) =>
      _creditCardRegex.hasMatch(inputString);
  static validateBlacklisted(
          List<String> blacklistedWords, String candidateWord) =>
      blacklistedWords.contains(candidateWord);
}

final RegExp _dateRegex =
    RegExp(r"^\d{4}[-/](0?[1-9]|1[012])[-/](0?[1-9]|[12][0-9]|3[01])$");
final RegExp _timeRegex = RegExp(
    r"^([0-1]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?( ([A-Z]{3}|GMT [-+]([0-9]|1[0-2])))?$");
final RegExp _creditCardRegex = RegExp(
    r"^(?:3[47]\d{2}([\- ]?)\d{6}\1\d{5}|(?:4\d{3}|5[1-5]\d{2}|6011)([\- ]?)\d{4}\2\d{4}\2\d{4})$");
final RegExp _phoneRegex =
    RegExp(r"^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$");
final RegExp _postalCodeRegex = RegExp(r"^\d{5}(-\d{4})?$");
final RegExp _emailRegex = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
final RegExp _urlRegex = RegExp(
    r"^(?:http|https):\/\/[\w\-_]+(?:\.[\w\-_]+)+[\w\-.,@?^=%&:/~\\+#]*$");
final RegExp _currencyRegex =
    RegExp(r"^(\$|\u00A3|\u00A5|\uFFE5)(\d*\.\d+|\d+)$");
final RegExp _ipRegex = RegExp(
    r"^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$");
