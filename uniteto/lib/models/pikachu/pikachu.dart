import 'package:json_annotation/json_annotation.dart';

part 'pikachu.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Pikachu {
  final int id;
  final String title;
  final String subtitle;
  final String imagePath;
  final String content;

  const Pikachu({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.content,
  });

  factory Pikachu.fromJson(Map<String, dynamic> json) =>
      _$PikachuFromJson(json);

  Map<String, dynamic> toJson() => _$PikachuToJson(this);
}
