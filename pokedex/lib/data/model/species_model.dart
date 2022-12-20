import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_model.freezed.dart';
part 'species_model.g.dart';

@freezed
abstract class Species with _$Species {
  const factory Species({
    required String name,
    required String url,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);
}
