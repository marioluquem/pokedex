import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/crystal_model.dart';
import 'package:pokedex/data/model/gold_model.dart';

part 'generation_ii_model.freezed.dart';
part 'generation_ii_model.g.dart';

@freezed
abstract class GenerationIi with _$GenerationIi {
  const factory GenerationIi({
    required Crystal crystal,
    required Gold gold,
    required Gold silver,
  }) = _GenerationIi;

  factory GenerationIi.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiFromJson(json);
}
