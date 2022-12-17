// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Move _$$_MoveFromJson(Map<String, dynamic> json) => _$_Move(
      move: Species.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['versionGroupDetails'] as List<dynamic>?)
          ?.map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MoveToJson(_$_Move instance) => <String, dynamic>{
      'move': instance.move,
      'versionGroupDetails': instance.versionGroupDetails,
    };
