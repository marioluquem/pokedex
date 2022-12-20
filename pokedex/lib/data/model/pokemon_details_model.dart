// To parse this JSON data, do
//
//     final pokemonDetailsModel = pokemonDetailsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:pokedex/data/model/abilities_model.dart';
import 'package:pokedex/data/model/game_index.dart';
import 'package:pokedex/data/model/move_model.dart';
import 'package:pokedex/data/model/pokemon_evolutions_model.dart';
import 'package:pokedex/data/model/species_model.dart';
import 'package:pokedex/data/model/sprites_model.dart';
import 'package:pokedex/data/model/stat_model.dart';
import 'package:pokedex/data/model/type_model.dart';

part 'pokemon_details_model.freezed.dart';
part 'pokemon_details_model.g.dart';

PokemonDetailsModel pokemonDetailsModelFromJson(String str) =>
    PokemonDetailsModel.fromJson(json.decode(str));

String pokemonDetailsModelToJson(PokemonDetailsModel data) =>
    json.encode(data.toJson());

@freezed
abstract class PokemonDetailsModel with _$PokemonDetailsModel {
  const factory PokemonDetailsModel({
    @Default(null) String? imageURL,
    required List<Ability>? abilities,
    required int? baseExperience,
    required List<Species>? forms,
    required List<GameIndex>? gameIndices,
    required int? height,
    required List<dynamic>? heldItems,
    required int? id,
    required bool? isDefault,
    required String? locationAreaEncounters,
    required List<Move>? moves,
    required String? name,
    required int? order,
    required List<dynamic>? pastTypes,
    required Species? species,
    required Sprites? sprites,
    required List<Stat>? stats,
    required List<TypeModel>? types,
    required int? weight,
    PokemonEvolutionsModel? evolutions,
  }) = _PokemonDetailsModel;

  factory PokemonDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsModelFromJson(json);
}
