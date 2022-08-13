import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniteto/models/pikachu/pikachu.dart';
import 'package:uniteto/providers/locale_provider.dart';
import 'package:uniteto/extensions/string_extension.dart';

class PikachuExpansionPanelBody extends ConsumerWidget {
  final Pikachu pikachu;

  const PikachuExpansionPanelBody(
    this.pikachu, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeDynamicProvider).value;
    final pikachuButtonText = (locale?.pikachuButton).toNonNullString();

    return Column(
      children: [
        Image.asset(
          pikachu.imagePath,
          height: 210.0,
        ),
        Text(
          pikachu.content,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              style: Theme.of(context).textButtonTheme.style,
              child: Text(pikachuButtonText),
            )
          ],
        ),
      ],
    );
  }
}
