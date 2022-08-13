import 'package:uniteto/constants/locale.dart';

String getLocaleFilePath(String locale) {
  return _localeToFilePathMap()[locale] ?? LocaleFilePath.en;
}

Map<String, String> _localeToFilePathMap() {
  return {
    LocaleEnum.en.name: LocaleFilePath.en,
    LocaleEnum.bm.name: LocaleFilePath.bm,
  };
}
