import 'package:freezed_annotation/freezed_annotation.dart';

part 'dream_world_model.freezed.dart';
part 'dream_world_model.g.dart';

@freezed
abstract class DreamWorld with _$DreamWorld {
  const factory DreamWorld({
    required String frontDefault,
    required dynamic frontFemale,
  }) = _DreamWorld;

  factory DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldFromJson(json);
}
