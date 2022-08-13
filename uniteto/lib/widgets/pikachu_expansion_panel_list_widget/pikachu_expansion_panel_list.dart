import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniteto/models/internal_models/pikachu_expander.dart';
import 'package:uniteto/providers/state_notifier/pikachu_expander_state_notifier.dart';
import 'package:uniteto/widgets/pikachu_expansion_panel_list_widget/pikachu_expansion_panel_body.dart';
import 'package:uniteto/widgets/pikachu_expansion_panel_list_widget/pikachu_expansion_panel_header.dart';

class PikachuExpansionPanelList extends HookConsumerWidget {
  const PikachuExpansionPanelList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<PikachuExpander> _pikachuExpanders =
        ref.watch(pikachuExpanderProvider);

    return ExpansionPanelList(
      animationDuration: const Duration(milliseconds: 500),
      elevation: 1,
      expansionCallback: (int index, bool isExpanded) {
        ref
            .read(pikachuExpanderProvider.notifier)
            .toggleExpander(_pikachuExpanders[index].pikachu.id, isExpanded);
      },
      children: _pikachuExpanders
          .map(
            (pikachu) => buildExpansionPanel(pikachu),
          )
          .toList(),
    );
  }

  ExpansionPanel buildExpansionPanel(PikachuExpander pikachuExpander) {
    return ExpansionPanel(
      headerBuilder: (context, isExpanded) {
        return PikachuExpansionPanelHeader(pikachuExpander.pikachu);
      },
      body: PikachuExpansionPanelBody(pikachuExpander.pikachu),
      isExpanded: pikachuExpander.isExpanded,
      canTapOnHeader: true,
    );
  }
}
