import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniteto/constants/assets.dart';
import 'package:uniteto/models/internal_models/pikachu_expander.dart';
import 'package:uniteto/utilities/json_converter/to_pikachu_list.dart';

class PikachuExpanderNotifier extends StateNotifier<List<PikachuExpander>> {
  PikachuExpanderNotifier() : super([]) {
    loadPikachuExpander();
  }

  loadPikachuExpander() async {
    var pikachus = await toPikachu(Assets.pikachus);
    state =
        pikachus.map((pikachu) => PikachuExpander(pikachu: pikachu)).toList();
  }

  void toggleExpander(int id, bool isExpanded) {
    state = [
      for (final pikachuExpander in state)
        if (pikachuExpander.pikachu.id == id)
          pikachuExpander.copyWith(isExpanded: !isExpanded)
        else
          pikachuExpander,
    ];
  }
}

final pikachuExpanderProvider =
    StateNotifierProvider<PikachuExpanderNotifier, List<PikachuExpander>>(
        (ref) {
  return PikachuExpanderNotifier();
});
