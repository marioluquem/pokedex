import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/pokemon_simple_info_model.dart';

part 'pokemon_list_response_model.freezed.dart';
part 'pokemon_list_response_model.g.dart';

@freezed
class PokemonListModel with _$PokemonListModel {
  factory PokemonListModel(
      {required int count,
      required String next,
      @Default(null) String? previous,
      required List<PokemonSimpleInfoModel> results}) = _PokemonListModel;

  factory PokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListModelFromJson(json);
}
