// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponsePokemonListModel _$$_ResponsePokemonListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ResponsePokemonListModel(
      count: json['count'] as int,
      next: json['next'] as String,
      previous: json['previous'] as String? ?? null,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonSimpleInfoModel.fromJson(
              Map<String, String>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_ResponsePokemonListModelToJson(
        _$_ResponsePokemonListModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
