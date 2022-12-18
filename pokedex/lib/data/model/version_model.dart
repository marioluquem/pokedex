import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/generation_i_model.dart';
import 'package:pokedex/data/model/generation_ii_model.dart';
import 'package:pokedex/data/model/generation_iii_model.dart';
import 'package:pokedex/data/model/generation_iv_model.dart';
import 'package:pokedex/data/model/generation_v_model.dart';
import 'package:pokedex/data/model/generation_vii_model.dart';
import 'package:pokedex/data/model/generation_viii_model.dart';
import 'package:pokedex/data/model/home_model.dart';

part 'version_model.freezed.dart';
part 'version_model.g.dart';

@freezed
abstract class Versions with _$Versions {
  const factory Versions({
    required GenerationI? generationI,
    required GenerationIi? generationIi,
    required GenerationIii? generationIii,
    required GenerationIv? generationIv,
    required GenerationV? generationV,
    required Map<String, Home>? generationVi,
    required GenerationVii? generationVii,
    required GenerationViii? generationViii,
  }) = _Versions;

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);
}
