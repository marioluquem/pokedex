import 'package:freezed_annotation/freezed_annotation.dart';

part 'official_art_work_model.freezed.dart';
part 'official_art_work_model.g.dart';

@freezed
abstract class OfficialArtwork with _$OfficialArtwork {
  const factory OfficialArtwork({
    required String frontDefault,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}
