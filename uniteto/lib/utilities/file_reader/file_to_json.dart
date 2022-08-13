import 'package:uniteto/utilities/file_reader/file_to_string.dart';
import 'package:uniteto/utilities/json_converter/json_decode.dart';

Future<dynamic> fileToJson(String filePath) async {
  final jsonString = await fileToString(filePath);
  return await jsonDecode(jsonString);
}
