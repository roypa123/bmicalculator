class Validators {
  static String? validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is mandatory";
    } else if (!RegExp(".*[0-9].*").hasMatch(value)) {
      return "This should be a number ";
    } else {
      return null;
    }
  }


}