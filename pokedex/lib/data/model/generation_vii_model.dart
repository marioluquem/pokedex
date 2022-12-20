import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/dream_world_model.dart';
import 'package:pokedex/data/model/home_model.dart';

part 'generation_vii_model.freezed.dart';
part 'generation_vii_model.g.dart';

@freezed
abstract class GenerationVii with _$GenerationVii {
  const factory GenerationVii({
    required DreamWorld icons,
    required Home ultraSunUltraMoon,
  }) = _GenerationVii;

  factory GenerationVii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiFromJson(json);
}
