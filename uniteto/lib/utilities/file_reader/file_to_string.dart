import 'package:flutter/services.dart' show rootBundle;

Future<String> fileToString(String filename) async {
  return await rootBundle.loadString(filename);
}
