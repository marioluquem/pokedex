import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class Home with _$Home {
  const factory Home({
    required String? frontDefault,
    required String? frontFemale,
    required String? frontShiny,
    required String? frontShinyFemale,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}
