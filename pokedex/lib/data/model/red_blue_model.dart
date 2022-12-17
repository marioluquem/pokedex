import 'package:freezed_annotation/freezed_annotation.dart';

part 'red_blue_model.freezed.dart';
part 'red_blue_model.g.dart';

@freezed
abstract class RedBlue with _$RedBlue {
  const factory RedBlue({
    required String backDefault,
    required String backGray,
    required String backTransparent,
    required String frontDefault,
    required String frontGray,
    required String frontTransparent,
  }) = _RedBlue;

  factory RedBlue.fromJson(Map<String, dynamic> json) =>
      _$RedBlueFromJson(json);
}
