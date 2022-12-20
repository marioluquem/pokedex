// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_PokemonListModel _$$_PokemonListModelFromJson(Map<String, dynamic> json) =>
    _$_PokemonListModel(
      count: json['count'] as int,
      next: json['next'] as String,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonSimpleInfoModel.fromJson(
              Map<String, String>.from(e as Map)))
          .toList(),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_PokemonListModelToJson(_$_PokemonListModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
