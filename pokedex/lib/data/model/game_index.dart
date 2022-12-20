import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/species_model.dart';

part 'game_index.freezed.dart';
part 'game_index.g.dart';

@freezed
abstract class GameIndex with _$GameIndex {
  const factory GameIndex({
    required int gameIndex,
    required Species version,
  }) = _GameIndex;

  factory GameIndex.fromJson(Map<String, dynamic> json) =>
      _$GameIndexFromJson(json);
}
