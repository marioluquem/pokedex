// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_evolutions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_PokemonEvolutionsModel _$$_PokemonEvolutionsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonEvolutionsModel(
      babyTriggerItem: json['babyTriggerItem'],
      chain: Chain.fromJson(json['chain'] as Map<String, dynamic>),
      id: json['id'] as int,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_PokemonEvolutionsModelToJson(
        _$_PokemonEvolutionsModel instance) =>
    <String, dynamic>{
      'babyTriggerItem': instance.babyTriggerItem,
      'chain': instance.chain,
      'id': instance.id,
    };
