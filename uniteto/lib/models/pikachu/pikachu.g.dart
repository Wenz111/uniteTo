// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pikachu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pikachu _$PikachuFromJson(Map<String, dynamic> json) => Pikachu(
      id: json['id'] as int,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      imagePath: json['image_path'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$PikachuToJson(Pikachu instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image_path': instance.imagePath,
      'content': instance.content,
    };
