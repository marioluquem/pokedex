import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/sprites_model.dart';

part 'generation_v_model.freezed.dart';
part 'generation_v_model.g.dart';

@freezed
abstract class GenerationV with _$GenerationV {
  const factory GenerationV({
    required Sprites blackWhite,
  }) = _GenerationV;

  factory GenerationV.fromJson(Map<String, dynamic> json) =>
      _$GenerationVFromJson(json);
}
