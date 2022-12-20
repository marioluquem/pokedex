import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_simple_info_model.freezed.dart';
part 'pokemon_simple_info_model.g.dart';

@freezed
class PokemonSimpleInfoModel with _$PokemonSimpleInfoModel {
  factory PokemonSimpleInfoModel({required String name, required String url}) =
      _PokemonSimpleInfoModel;

  factory PokemonSimpleInfoModel.fromJson(Map<String, String> json) =>
      _$PokemonSimpleInfoModelFromJson(json);

  PokemonSimpleInfoModel._();

  int get id => int.parse((url.split('/')..removeLast()).last);

  String get photoURL =>
      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${((url.split('/')..removeLast()).last)}.png";
}
