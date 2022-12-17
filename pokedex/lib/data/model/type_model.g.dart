// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TypeModel _$$_TypeModelFromJson(Map<String, dynamic> json) => _$_TypeModel(
      slot: json['slot'] as int,
      type: Species.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TypeModelToJson(_$_TypeModel instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
