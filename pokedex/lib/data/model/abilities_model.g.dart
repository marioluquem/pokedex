// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abilities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Ability _$$_AbilityFromJson(Map<String, dynamic> json) => _$_Ability(
      ability: Species.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['isHidden'] as bool?,
      slot: json['slot'] as int,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_AbilityToJson(_$_Ability instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
      'slot': instance.slot,
    };
