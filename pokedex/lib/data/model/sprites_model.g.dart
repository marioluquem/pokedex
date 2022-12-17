// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprites_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      backDefault: json['backDefault'] as String?,
      backFemale: json['backFemale'] as String?,
      backShiny: json['backShiny'] as String?,
      backShinyFemale: json['backShinyFemale'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontFemale: json['frontFemale'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontShinyFemale: json['frontShinyFemale'] as String?,
      other: json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
      versions: json['versions'] == null
          ? null
          : Versions.fromJson(json['versions'] as Map<String, dynamic>),
      animated: json['animated'] == null
          ? null
          : Sprites.fromJson(json['animated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) =>
    <String, dynamic>{
      'backDefault': instance.backDefault,
      'backFemale': instance.backFemale,
      'backShiny': instance.backShiny,
      'backShinyFemale': instance.backShinyFemale,
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
      'frontShiny': instance.frontShiny,
      'frontShinyFemale': instance.frontShinyFemale,
      'other': instance.other,
      'versions': instance.versions,
      'animated': instance.animated,
    };
