import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/species_model.dart';

part 'evolution_detail_model.freezed.dart';
part 'evolution_detail_model.g.dart';

@freezed
abstract class EvolutionDetail with _$EvolutionDetail {
  const factory EvolutionDetail({
    required dynamic gender,
    required dynamic heldItem,
    required dynamic item,
    required dynamic knownMove,
    required dynamic knownMoveType,
    required dynamic location,
    required dynamic minAffection,
    required dynamic minBeauty,
    required dynamic minHappiness,
    required int? minLevel,
    required bool? needsOverworldRain,
    required dynamic partySpecies,
    required dynamic partyType,
    required dynamic relativePhysicalStats,
    required String? timeOfDay,
    required dynamic tradeSpecies,
    required Species? trigger,
    required bool? turnUpsideDown,
  }) = _EvolutionDetail;

  factory EvolutionDetail.fromJson(Map<String, dynamic> json) =>
      _$EvolutionDetailFromJson(json);
}
