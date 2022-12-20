import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/sprites_model.dart';

part 'generation_iv_model.freezed.dart';
part 'generation_iv_model.g.dart';

@freezed
abstract class GenerationIv with _$GenerationIv {
  const factory GenerationIv({
    required Sprites diamondPearl,
    required Sprites heartgoldSoulsilver,
    required Sprites platinum,
  }) = _GenerationIv;

  factory GenerationIv.fromJson(Map<String, dynamic> json) =>
      _$GenerationIvFromJson(json);
}
