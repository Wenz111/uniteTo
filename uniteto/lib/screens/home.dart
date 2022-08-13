import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniteto/constants/routes.dart';
import 'package:uniteto/providers/locale_provider.dart';
import 'package:uniteto/widgets/locale_dialog_widget/locale_confirmation_dialog.dart';
import 'package:uniteto/extensions/string_extension.dart';
import 'package:uniteto/widgets/theme_toggle_buttons/theme_toggle_buttons.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeDynamicProvider).value;
    final appTitle = (locale?.appTitle).toNonNullString();
    final homeScreen = (locale?.homeScreen).toNonNullString();
    final changeLanguage = (locale?.changeLanguage).toNonNullString();
    final goToPikachuScreen = (locale?.goToPikachuScreen).toNonNullString();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(appTitle),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Text(
              homeScreen,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const Padding(padding: EdgeInsets.all(20.0)),
          const Center(
            child: ThemeToggleButtons(),
          ),
          const Padding(padding: EdgeInsets.all(20.0)),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => const LocaleConfirmationDialog(),
                  barrierDismissible: true,
                );
              },
              child: Text(changeLanguage),
            ),
          ),
          const Padding(padding: EdgeInsets.all(20.0)),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.pikachu);
              },
              child: Text(
                goToPikachuScreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
