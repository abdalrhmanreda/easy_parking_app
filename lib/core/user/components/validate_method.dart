String? validateMethod(String? value, String? type) {
  if (value!.isEmpty) {
    return 'Should enter $type';
  } else {
    return null;
  }
}
