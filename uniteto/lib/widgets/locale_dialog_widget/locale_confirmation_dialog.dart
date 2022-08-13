import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uniteto/providers/locale_provider.dart';
import 'package:uniteto/widgets/locale_dialog_widget/locale_list_tile.dart';
import 'package:uniteto/extensions/string_extension.dart';

class LocaleConfirmationDialog extends HookConsumerWidget {
  const LocaleConfirmationDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get locale
    final locale = ref.watch(localeDynamicProvider).value;
    final languageHeader = (locale?.languageHeader).toNonNullString();
    final generalError = (locale?.generalError).toNonNullString();
    final generalCancel = (locale?.generalCancel).toNonNullString();
    final generalOk = (locale?.generalOk).toNonNullString();

    // Get a list of locale key and name for user to change language
    final localeKeys = ref.watch(localeKeyProvider);

    // Change language based on user selection
    final localeKeyState = ref.watch(localeKeyStateProvider);
    final localeKeyRadioButtonState = useState(localeKeyState);

    void _cancelChangeLanguage() {
      Navigator.pop(context);
    }

    void _confirmChangeLanguage() {
      if (localeKeyState != localeKeyRadioButtonState.value) {
        ref
            .read(localeKeyStateProvider.notifier)
            .update((state) => localeKeyRadioButtonState.value);
      }
      Navigator.pop(context);
    }

    return Dialog(
        child: Column(
      children: [
        Text(
          languageHeader,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
        const Divider(
          thickness: 1,
        ),
        Expanded(
          child: ListView(
            children: localeKeys.when(
              data: (locales) => locales
                  .map((locale) =>
                      LocaleListTile(locale, localeKeyRadioButtonState))
                  .toList(),
              error: (error, stack) => [Text(generalError)],
              loading: () => [const CircularProgressIndicator()],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: _cancelChangeLanguage,
                child: Text(generalCancel),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: _confirmChangeLanguage,
                child: Text(generalOk),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 6),
        ),
      ],
    ));
  }
}
