// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Other _$$_OtherFromJson(Map<String, dynamic> json) => _$_Other(
      dreamWorld: json['dreamWorld'] == null
          ? null
          : DreamWorld.fromJson(json['dreamWorld'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : Home.fromJson(json['home'] as Map<String, dynamic>),
      officialArtwork: json['officialArtwork'] == null
          ? null
          : OfficialArtwork.fromJson(
              json['officialArtwork'] as Map<String, dynamic>),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_OtherToJson(_$_Other instance) => <String, dynamic>{
      'dreamWorld': instance.dreamWorld,
      'home': instance.home,
      'officialArtwork': instance.officialArtwork,
    };
