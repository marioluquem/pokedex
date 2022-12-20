// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Chain _$$_ChainFromJson(Map<String, dynamic> json) => _$_Chain(
      evolution_details: (json['evolution_details'] as List<dynamic>?)
          ?.map((e) => EvolutionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolves_to: (json['evolves_to'] as List<dynamic>?)
          ?.map((e) => Chain.fromJson(e as Map<String, dynamic>))
          .toList(),
      is_baby: json['is_baby'] as bool?,
      species: json['species'] == null
          ? null
          : Species.fromJson(json['species'] as Map<String, dynamic>),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_ChainToJson(_$_Chain instance) => <String, dynamic>{
      'evolution_details': instance.evolution_details,
      'evolves_to': instance.evolves_to,
      'is_baby': instance.is_baby,
      'species': instance.species,
    };
