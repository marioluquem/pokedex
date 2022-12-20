// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EvolutionDetail _$$_EvolutionDetailFromJson(Map<String, dynamic> json) =>
    _$_EvolutionDetail(
      gender: json['gender'],
      heldItem: json['heldItem'],
      item: json['item'],
      knownMove: json['knownMove'],
      knownMoveType: json['knownMoveType'],
      location: json['location'],
      minAffection: json['minAffection'],
      minBeauty: json['minBeauty'],
      minHappiness: json['minHappiness'],
      minLevel: json['minLevel'] as int?,
      needsOverworldRain: json['needsOverworldRain'] as bool?,
      partySpecies: json['partySpecies'],
      partyType: json['partyType'],
      relativePhysicalStats: json['relativePhysicalStats'],
      timeOfDay: json['timeOfDay'] as String?,
      tradeSpecies: json['tradeSpecies'],
      trigger: json['trigger'] == null
          ? null
          : Species.fromJson(json['trigger'] as Map<String, dynamic>),
      turnUpsideDown: json['turnUpsideDown'] as bool?,
    );

Map<String, dynamic> _$$_EvolutionDetailToJson(_$_EvolutionDetail instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'heldItem': instance.heldItem,
      'item': instance.item,
      'knownMove': instance.knownMove,
      'knownMoveType': instance.knownMoveType,
      'location': instance.location,
      'minAffection': instance.minAffection,
      'minBeauty': instance.minBeauty,
      'minHappiness': instance.minHappiness,
      'minLevel': instance.minLevel,
      'needsOverworldRain': instance.needsOverworldRain,
      'partySpecies': instance.partySpecies,
      'partyType': instance.partyType,
      'relativePhysicalStats': instance.relativePhysicalStats,
      'timeOfDay': instance.timeOfDay,
      'tradeSpecies': instance.tradeSpecies,
      'trigger': instance.trigger,
      'turnUpsideDown': instance.turnUpsideDown,
    };
