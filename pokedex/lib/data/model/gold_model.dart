import 'package:freezed_annotation/freezed_annotation.dart';

part 'gold_model.freezed.dart';
part 'gold_model.g.dart';

@freezed
abstract class Gold with _$Gold {
  const factory Gold({
    required String backDefault,
    required String backShiny,
    required String frontDefault,
    required String frontShiny,
    required String frontTransparent,
  }) = _Gold;

  factory Gold.fromJson(Map<String, dynamic> json) => _$GoldFromJson(json);
}
