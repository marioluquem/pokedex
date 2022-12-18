import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/species_model.dart';

part 'stat_model.freezed.dart';
part 'stat_model.g.dart';

@freezed
abstract class Stat with _$Stat {
  const factory Stat({
    required int? baseStat,
    required int? effort,
    required Species? stat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}
