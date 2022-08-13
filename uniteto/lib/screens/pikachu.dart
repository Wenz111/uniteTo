import 'package:flutter/material.dart';
import 'package:uniteto/widgets/pikachu_expansion_panel_list_widget/pikachu_expansion_panel_list.dart';

class PikachuScreen extends StatelessWidget {
  const PikachuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Rabbit'),
      ),
      body: Container(
        color: Colors.black12,
        child: const SingleChildScrollView(
          child: PikachuExpansionPanelList(),
        ),
      ),
    );
  }
}
