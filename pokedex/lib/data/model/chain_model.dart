import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/evolution_detail_model.dart';
import 'package:pokedex/data/model/species_model.dart';

part 'chain_model.freezed.dart';
part 'chain_model.g.dart';

@freezed
class Chain with _$Chain {
  factory Chain({
    // ignore: non_constant_identifier_names
    List<EvolutionDetail>? evolution_details,
    // ignore: non_constant_identifier_names
    List<Chain>? evolves_to,
    // ignore: non_constant_identifier_names
    bool? is_baby,
    Species? species,
  }) = _Chain;

  factory Chain.fromJson(Map<String, dynamic> json) => _$ChainFromJson(json);

  Chain._();
}
