import 'package:freezed_annotation/freezed_annotation.dart';

part 'crystal_model.freezed.dart';
part 'crystal_model.g.dart';

@freezed
abstract class Crystal with _$Crystal {
  const factory Crystal({
    required String backDefault,
    required String backShiny,
    required String backShinyTransparent,
    required String backTransparent,
    required String frontDefault,
    required String frontShiny,
    required String frontShinyTransparent,
    required String frontTransparent,
  }) = _Crystal;

  factory Crystal.fromJson(Map<String, dynamic> json) =>
      _$CrystalFromJson(json);
}
