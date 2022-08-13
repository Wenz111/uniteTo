import 'package:flutter/material.dart';
import 'package:uniteto/models/pikachu/pikachu.dart';

@immutable
class PikachuExpander {
  final Pikachu pikachu;
  final bool isExpanded;

  const PikachuExpander({
    required this.pikachu,
    this.isExpanded = false,
  });


  PikachuExpander copyWith({Pikachu? pikachu, bool? isExpanded}) {
    return PikachuExpander(
      pikachu: pikachu ?? this.pikachu,
      isExpanded: isExpanded ?? this.isExpanded,
    );
  }
}
