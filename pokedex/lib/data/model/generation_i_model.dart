import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/red_blue_model.dart';

part 'generation_i_model.freezed.dart';
part 'generation_i_model.g.dart';

@freezed
abstract class GenerationI with _$GenerationI {
  const factory GenerationI({
    required RedBlue redBlue,
    required RedBlue yellow,
  }) = _GenerationI;

  factory GenerationI.fromJson(Map<String, dynamic> json) =>
      _$GenerationIFromJson(json);
}
