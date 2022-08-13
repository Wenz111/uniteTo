import 'package:uniteto/constants/locale.dart';
import 'package:uniteto/models/locale/locale_key.dart';
import 'package:uniteto/utilities/file_reader/file_to_json.dart';

Future<List<LocaleKey>> toLocaleKey() async {
  return (await fileToJson(LocaleFilePath.key) as List)
      .map((localeKey) => LocaleKey.fromJson(localeKey))
      .toList();
}
