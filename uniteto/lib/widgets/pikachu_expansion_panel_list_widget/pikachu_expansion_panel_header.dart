import 'package:flutter/material.dart';
import 'package:uniteto/models/pikachu/pikachu.dart';

class PikachuExpansionPanelHeader extends StatelessWidget {
  final Pikachu pikachu;

  const PikachuExpansionPanelHeader(this.pikachu, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: AssetImage(
          pikachu.imagePath,
        ),
        backgroundColor: Colors.cyan,
      ),
      title: Text(
        pikachu.title,
        style: textTheme.headline6,
      ),
      subtitle: Text(
        pikachu.subtitle,
        style: textTheme.overline,
      ),
    );
  }
}
