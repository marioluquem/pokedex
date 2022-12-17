import 'package:freezed_annotation/freezed_annotation.dart';

part 'emerald_model.freezed.dart';
part 'emerald_model.g.dart';

@freezed
abstract class Emerald with _$Emerald {
  const factory Emerald({
    required String frontDefault,
    required String frontShiny,
  }) = _Emerald;

  factory Emerald.fromJson(Map<String, dynamic> json) =>
      _$EmeraldFromJson(json);
}
