import 'package:json_annotation/json_annotation.dart';

part 'locale_key.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LocaleKey {
  final String key;
  final String name;

  const LocaleKey({
    required this.key,
    required this.name,
  });

factory LocaleKey.fromJson(Map<String, dynamic> json) => _$LocaleKeyFromJson(json);

Map<String, dynamic> toJson() => _$LocaleKeyToJson(this);
}
