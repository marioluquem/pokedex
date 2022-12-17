import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/species_model.dart';

part 'version_group_detail_model.freezed.dart';
part 'version_group_detail_model.g.dart';

@freezed
abstract class VersionGroupDetail with _$VersionGroupDetail {
  const factory VersionGroupDetail({
    required int levelLearnedAt,
    required Species moveLearnMethod,
    required Species versionGroup,
  }) = _VersionGroupDetail;

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailFromJson(json);
}
