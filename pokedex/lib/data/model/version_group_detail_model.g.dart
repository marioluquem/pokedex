// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_group_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_VersionGroupDetail _$$_VersionGroupDetailFromJson(
        Map<String, dynamic> json) =>
    _$_VersionGroupDetail(
      levelLearnedAt: json['levelLearnedAt'] as int,
      moveLearnMethod:
          Species.fromJson(json['moveLearnMethod'] as Map<String, dynamic>),
      versionGroup:
          Species.fromJson(json['versionGroup'] as Map<String, dynamic>),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_VersionGroupDetailToJson(
        _$_VersionGroupDetail instance) =>
    <String, dynamic>{
      'levelLearnedAt': instance.levelLearnedAt,
      'moveLearnMethod': instance.moveLearnMethod,
      'versionGroup': instance.versionGroup,
    };
