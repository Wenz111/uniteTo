import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniteto/constants/routes.dart';
import 'package:uniteto/providers/locale_provider.dart';
import 'package:uniteto/providers/theme_provider.dart';
import 'package:uniteto/routes/routes.dart';
import 'package:uniteto/extensions/string_extension.dart';
import 'package:uniteto/themes/light_themes.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeDynamicProvider).value;
    final appTitle = (locale?.appTitle).toNonNullString();

    final themeMode = ref.watch(themeModeStateProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: lightThemeData(),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.cyan),
      ),
      themeMode: themeMode,
      initialRoute: Routes.home,
      routes: routes(),
      // onGenerateRoute: generateRoutes,
    );
  }
}
