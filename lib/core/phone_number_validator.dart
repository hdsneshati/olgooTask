class PhoneNumberValidator {
  static bool isPhoneNumberValid(String phoneNumber) {
    if (phoneNumber.length != 11 && phoneNumber.length != 10) return false;
    if (phoneNumber.length == 11 && !phoneNumber.startsWith('0')) return false;
    return true;
  }

  static String formatPhoneNumber(String phoneNumber) {
    return phoneNumber.length == 11 ? phoneNumber.substring(1) : phoneNumber;
  }
}
