import 'package:flutter/cupertino.dart';
import 'package:uniteto/models/locale/locale.dart';
import 'package:uniteto/utilities/file_reader/file_to_json.dart';

Future<Locale> toLocale(String filePath) async {
  return Locale.fromJson(await fileToJson(filePath));
}
