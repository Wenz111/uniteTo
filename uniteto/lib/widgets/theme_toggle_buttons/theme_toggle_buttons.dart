import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:uniteto/providers/theme_provider.dart';

class ThemeToggleButtons extends ConsumerWidget {
  const ThemeToggleButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeStateProvider);

    final isSelected = <bool>[
      themeMode == ThemeMode.system,
      themeMode == ThemeMode.light,
      themeMode == ThemeMode.dark,
    ];

    return ToggleButtons(
      children: const [
        Icon(
          Icons.keyboard_arrow_left_rounded,
        ),
        Icon(
          Icons.keyboard_arrow_down_outlined,
        ),
        Icon(
          Icons.keyboard_arrow_right_sharp,
        ),
      ],
      isSelected: isSelected,
      onPressed: (index) {
        _updateThemeModeState(index, ref);
      },
    );
  }

  void _updateThemeModeState(int index, WidgetRef ref) {
    switch (index) {
      case 0:
        ref
            .read(themeModeStateProvider.notifier)
            .update((state) => ThemeMode.system);
        break;

      case 1:
        ref
            .read(themeModeStateProvider.notifier)
            .update((state) => ThemeMode.light);
        break;

      case 2:
        ref
            .read(themeModeStateProvider.notifier)
            .update((state) => ThemeMode.dark);
        break;

      default:
        ref
            .read(themeModeStateProvider.notifier)
            .update((state) => ThemeMode.light);
        break;
    }
  }
}
