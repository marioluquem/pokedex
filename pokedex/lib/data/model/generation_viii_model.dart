import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/dream_world_model.dart';

part 'generation_viii_model.freezed.dart';
part 'generation_viii_model.g.dart';

@freezed
abstract class GenerationViii with _$GenerationViii {
  const factory GenerationViii({
    required DreamWorld icons,
  }) = _GenerationViii;

  factory GenerationViii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiiFromJson(json);
}
