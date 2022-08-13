import 'package:json_annotation/json_annotation.dart';

part 'locale.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Locale {
  final String? appTitle;
  final String? title;
  final String? homeScreen;
  final String? changeLanguage;
  final String? goToPikachuScreen;
  final String? generalSection;
  final String? generalError;
  final String? generalCancel;
  final String? generalOk;
  final String? localeSection;
  final String? languageHeader;
  final String? pikachuSection;
  final String? pikachuButton;

  const Locale({
    this.appTitle,
    this.title,
    this.homeScreen,
    this.changeLanguage,
    this.goToPikachuScreen,
    this.generalSection,
    this.generalError,
    this.generalCancel,
    this.generalOk,
    this.localeSection,
    this.languageHeader,
    this.pikachuSection,
    this.pikachuButton,
  });

  factory Locale.fromJson(Map<String, dynamic> json) => _$LocaleFromJson(json);

  Map<String, dynamic> toJson() => _$LocaleToJson(this);
}
