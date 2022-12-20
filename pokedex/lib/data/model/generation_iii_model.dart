import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/emerald_model.dart';
import 'package:pokedex/data/model/gold_model.dart';

part 'generation_iii_model.freezed.dart';
part 'generation_iii_model.g.dart';

@freezed
abstract class GenerationIii with _$GenerationIii {
  const factory GenerationIii({
    required Emerald emerald,
    required Gold fireredLeafgreen,
    required Gold rubySapphire,
  }) = _GenerationIii;

  factory GenerationIii.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiiFromJson(json);
}
