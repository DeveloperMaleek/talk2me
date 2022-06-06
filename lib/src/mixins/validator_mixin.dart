class ValidationMixin {
  String? validateField(value) {
    if (value.isEmpty) {
      return 'Fields cannot be empty';
    }
    return null;
  }

  String? validateEmail(value) {
    if (!value!.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value.length < 6 ||
        (!value.contains(RegExp(r'[A-Z]'))) ||
        (!value.contains(RegExp(r'[a-z]'))) ||
        (!value.contains(RegExp(r'[0-9]')))) {
      return 'Password must be a minimum of \n6 characters, contain atleast 1 uppercase \nletter, 1 lower case, and 1 number.';
    }
    return null;
  }
}
