import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/species_model.dart';

part 'type_model.freezed.dart';
part 'type_model.g.dart';

@freezed
abstract class TypeModel with _$TypeModel {
  const factory TypeModel({
    required int slot,
    required Species type,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}
