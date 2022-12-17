import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/dream_world_model.dart';
import 'package:pokedex/data/model/home_model.dart';
import 'package:pokedex/data/model/official_art_work_model.dart';

part 'other_model.freezed.dart';
part 'other_model.g.dart';

@freezed
abstract class Other with _$Other {
  const factory Other({
    required DreamWorld? dreamWorld,
    required Home? home,
    required OfficialArtwork? officialArtwork,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}
