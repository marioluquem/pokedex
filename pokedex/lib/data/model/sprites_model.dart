import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/other_model.dart';
import 'package:pokedex/data/model/version_model.dart';

part 'sprites_model.freezed.dart';
part 'sprites_model.g.dart';

@freezed
abstract class Sprites with _$Sprites {
  const factory Sprites({
    required String? backDefault,
    required String? backFemale,
    required String? backShiny,
    required String? backShinyFemale,
    required String? frontDefault,
    required String? frontFemale,
    required String? frontShiny,
    required String? frontShinyFemale,
    required Other? other,
    required Versions? versions,
    required Sprites? animated,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}
