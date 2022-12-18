import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/species_model.dart';
import 'package:pokedex/data/model/version_group_detail_model.dart';

part 'move_model.freezed.dart';
part 'move_model.g.dart';

@freezed
abstract class Move with _$Move {
  const factory Move({
    required Species move,
    required List<VersionGroupDetail>? versionGroupDetails,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}
