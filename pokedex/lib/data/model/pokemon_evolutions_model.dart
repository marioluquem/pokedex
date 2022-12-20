import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pokedex/data/model/chain_model.dart';

part 'pokemon_evolutions_model.freezed.dart';
part 'pokemon_evolutions_model.g.dart';

@freezed
abstract class PokemonEvolutionsModel with _$PokemonEvolutionsModel {
  const factory PokemonEvolutionsModel({
    required dynamic babyTriggerItem,
    required Chain chain,
    required int id,
  }) = _PokemonEvolutionsModel;

  factory PokemonEvolutionsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionsModelFromJson(json);
}
