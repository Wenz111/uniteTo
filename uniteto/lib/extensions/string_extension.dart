extension ParseNullableString on String? {
  String toNonNullString({String defaultValue = ""}) {
    return this ?? defaultValue;
  }
}
