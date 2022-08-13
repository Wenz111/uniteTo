import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniteto/constants/locale.dart';
import 'package:uniteto/models/locale/locale.dart';
import 'package:uniteto/models/locale/locale_key.dart';
import 'package:uniteto/utilities/json_converter/to_locale.dart';
import 'package:uniteto/utilities/json_converter/to_locale_key_list.dart';
import 'package:uniteto/utilities/map/locale_map.dart';

// Pass the user current selected locale and
// map to locale file path then parse to locale object
final localeProvider =
    FutureProvider.family<Locale, String>((ref, locale) async {
  return await toLocale(getLocaleFilePath(locale));
});

// Get the available list of locale
final localeKeyProvider = FutureProvider<List<LocaleKey>>((ref) async {
  return await toLocaleKey();
});

// The current user selected locale
final localeKeyStateProvider =
    StateProvider<String>((ref) => LocaleEnum.en.name);

// Get the locale object
// based on the current user selected locale
final localeDynamicProvider = FutureProvider((ref) async {
  final localeKeyState = ref.watch(localeKeyStateProvider);
  return await ref.watch(localeProvider(localeKeyState).future);
});
