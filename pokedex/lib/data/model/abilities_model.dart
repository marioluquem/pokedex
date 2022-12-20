import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/species_model.dart';

part 'abilities_model.freezed.dart';
part 'abilities_model.g.dart';

@freezed
abstract class Ability with _$Ability {
  const factory Ability({
    required Species ability,
    required bool? isHidden,
    required int slot,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}
