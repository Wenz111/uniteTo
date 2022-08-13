import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniteto/models/locale/locale_key.dart';

class LocaleListTile extends HookConsumerWidget {
  final LocaleKey locale;
  final ValueNotifier<String> localeKeyRadioButtonState;

  const LocaleListTile(
    this.locale,
    this.localeKeyRadioButtonState, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RadioListTile(
      title: Text(locale.name),
      value: locale.key,
      activeColor: Theme.of(context).colorScheme.secondary,
      groupValue: localeKeyRadioButtonState.value,
      onChanged: (String? _selectedLocaleKey) {
        localeKeyRadioButtonState.value = _selectedLocaleKey.toString();
      },
    );
  }
}
