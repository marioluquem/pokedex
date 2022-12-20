// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Versions _$$_VersionsFromJson(Map<String, dynamic> json) => _$_Versions(
      generationI: json['generationI'] == null
          ? null
          : GenerationI.fromJson(json['generationI'] as Map<String, dynamic>),
      generationIi: json['generationIi'] == null
          ? null
          : GenerationIi.fromJson(json['generationIi'] as Map<String, dynamic>),
      generationIii: json['generationIii'] == null
          ? null
          : GenerationIii.fromJson(
              json['generationIii'] as Map<String, dynamic>),
      generationIv: json['generationIv'] == null
          ? null
          : GenerationIv.fromJson(json['generationIv'] as Map<String, dynamic>),
      generationV: json['generationV'] == null
          ? null
          : GenerationV.fromJson(json['generationV'] as Map<String, dynamic>),
      generationVi: (json['generationVi'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Home.fromJson(e as Map<String, dynamic>)),
      ),
      generationVii: json['generationVii'] == null
          ? null
          : GenerationVii.fromJson(
              json['generationVii'] as Map<String, dynamic>),
      generationViii: json['generationViii'] == null
          ? null
          : GenerationViii.fromJson(
              json['generationViii'] as Map<String, dynamic>),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_VersionsToJson(_$_Versions instance) =>
    <String, dynamic>{
      'generationI': instance.generationI,
      'generationIi': instance.generationIi,
      'generationIii': instance.generationIii,
      'generationIv': instance.generationIv,
      'generationV': instance.generationV,
      'generationVi': instance.generationVi,
      'generationVii': instance.generationVii,
      'generationViii': instance.generationViii,
    };
