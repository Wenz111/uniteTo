import 'package:uniteto/models/pikachu/pikachu.dart';
import 'package:uniteto/utilities/file_reader/file_to_json.dart';

Future<List<Pikachu>> toPikachu(String filePath) async {
  return (await fileToJson(filePath) as List)
      .map((pikachu) => Pikachu.fromJson(pikachu))
      .toList();
}
