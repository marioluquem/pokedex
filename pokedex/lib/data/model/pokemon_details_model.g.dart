// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetailsModel _$$_PokemonDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsModel(
      imageURL: json['imageURL'] as String? ?? null,
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: json['baseExperience'] as int?,
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) => Species.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['gameIndices'] as List<dynamic>?)
          ?.map((e) => GameIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int?,
      heldItems: json['heldItems'] as List<dynamic>?,
      id: json['id'] as int?,
      isDefault: json['isDefault'] as bool?,
      locationAreaEncounters: json['locationAreaEncounters'] as String?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => Move.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: json['order'] as int?,
      pastTypes: json['pastTypes'] as List<dynamic>?,
      species: json['species'] == null
          ? null
          : Species.fromJson(json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => TypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
      evolutions: json['evolutions'] == null
          ? null
          : PokemonEvolutionsModel.fromJson(
              json['evolutions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDetailsModelToJson(
        _$_PokemonDetailsModel instance) =>
    <String, dynamic>{
      'imageURL': instance.imageURL,
      'abilities': instance.abilities,
      'baseExperience': instance.baseExperience,
      'forms': instance.forms,
      'gameIndices': instance.gameIndices,
      'height': instance.height,
      'heldItems': instance.heldItems,
      'id': instance.id,
      'isDefault': instance.isDefault,
      'locationAreaEncounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'pastTypes': instance.pastTypes,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
      'evolutions': instance.evolutions,
    };
