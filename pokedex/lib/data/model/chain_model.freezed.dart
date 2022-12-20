// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chain _$ChainFromJson(Map<String, dynamic> json) {
  return _Chain.fromJson(json);
}

/// @nodoc
mixin _$Chain {
// ignore: non_constant_identifier_names
  List<EvolutionDetail>? get evolution_details =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  List<Chain>? get evolves_to =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  bool? get is_baby => throw _privateConstructorUsedError;
  Species? get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChainCopyWith<Chain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainCopyWith<$Res> {
  factory $ChainCopyWith(Chain value, $Res Function(Chain) then) =
      _$ChainCopyWithImpl<$Res, Chain>;
  @useResult
  $Res call(
      {List<EvolutionDetail>? evolution_details,
      List<Chain>? evolves_to,
      bool? is_baby,
      Species? species});

  $SpeciesCopyWith<$Res>? get species;
}

/// @nodoc
class _$ChainCopyWithImpl<$Res, $Val extends Chain>
    implements $ChainCopyWith<$Res> {
  _$ChainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolution_details = freezed,
    Object? evolves_to = freezed,
    Object? is_baby = freezed,
    Object? species = freezed,
  }) {
    return _then(_value.copyWith(
      evolution_details: freezed == evolution_details
          ? _value.evolution_details
          : evolution_details // ignore: cast_nullable_to_non_nullable
              as List<EvolutionDetail>?,
      evolves_to: freezed == evolves_to
          ? _value.evolves_to
          : evolves_to // ignore: cast_nullable_to_non_nullable
              as List<Chain>?,
      is_baby: freezed == is_baby
          ? _value.is_baby
          : is_baby // ignore: cast_nullable_to_non_nullable
              as bool?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $SpeciesCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChainCopyWith<$Res> implements $ChainCopyWith<$Res> {
  factory _$$_ChainCopyWith(_$_Chain value, $Res Function(_$_Chain) then) =
      __$$_ChainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EvolutionDetail>? evolution_details,
      List<Chain>? evolves_to,
      bool? is_baby,
      Species? species});

  @override
  $SpeciesCopyWith<$Res>? get species;
}

/// @nodoc
class __$$_ChainCopyWithImpl<$Res> extends _$ChainCopyWithImpl<$Res, _$_Chain>
    implements _$$_ChainCopyWith<$Res> {
  __$$_ChainCopyWithImpl(_$_Chain _value, $Res Function(_$_Chain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolution_details = freezed,
    Object? evolves_to = freezed,
    Object? is_baby = freezed,
    Object? species = freezed,
  }) {
    return _then(_$_Chain(
      evolution_details: freezed == evolution_details
          ? _value._evolution_details
          : evolution_details // ignore: cast_nullable_to_non_nullable
              as List<EvolutionDetail>?,
      evolves_to: freezed == evolves_to
          ? _value._evolves_to
          : evolves_to // ignore: cast_nullable_to_non_nullable
              as List<Chain>?,
      is_baby: freezed == is_baby
          ? _value.is_baby
          : is_baby // ignore: cast_nullable_to_non_nullable
              as bool?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chain extends _Chain {
  _$_Chain(
      {final List<EvolutionDetail>? evolution_details,
      final List<Chain>? evolves_to,
      this.is_baby,
      this.species})
      : _evolution_details = evolution_details,
        _evolves_to = evolves_to,
        super._();

  factory _$_Chain.fromJson(Map<String, dynamic> json) =>
      _$$_ChainFromJson(json);

// ignore: non_constant_identifier_names
  final List<EvolutionDetail>? _evolution_details;
// ignore: non_constant_identifier_names
  @override
  List<EvolutionDetail>? get evolution_details {
    final value = _evolution_details;
    if (value == null) return null;
    if (_evolution_details is EqualUnmodifiableListView)
      return _evolution_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: non_constant_identifier_names
  final List<Chain>? _evolves_to;
// ignore: non_constant_identifier_names
  @override
  List<Chain>? get evolves_to {
    final value = _evolves_to;
    if (value == null) return null;
    if (_evolves_to is EqualUnmodifiableListView) return _evolves_to;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: non_constant_identifier_names
  @override
  final bool? is_baby;
  @override
  final Species? species;

  @override
  String toString() {
    return 'Chain(evolution_details: $evolution_details, evolves_to: $evolves_to, is_baby: $is_baby, species: $species)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chain &&
            const DeepCollectionEquality()
                .equals(other._evolution_details, _evolution_details) &&
            const DeepCollectionEquality()
                .equals(other._evolves_to, _evolves_to) &&
            (identical(other.is_baby, is_baby) || other.is_baby == is_baby) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_evolution_details),
      const DeepCollectionEquality().hash(_evolves_to),
      is_baby,
      species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChainCopyWith<_$_Chain> get copyWith =>
      __$$_ChainCopyWithImpl<_$_Chain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChainToJson(
      this,
    );
  }
}

abstract class _Chain extends Chain {
  factory _Chain(
      {final List<EvolutionDetail>? evolution_details,
      final List<Chain>? evolves_to,
      final bool? is_baby,
      final Species? species}) = _$_Chain;
  _Chain._() : super._();

  factory _Chain.fromJson(Map<String, dynamic> json) = _$_Chain.fromJson;

  @override // ignore: non_constant_identifier_names
  List<EvolutionDetail>? get evolution_details;
  @override // ignore: non_constant_identifier_names
  List<Chain>? get evolves_to;
  @override // ignore: non_constant_identifier_names
  bool? get is_baby;
  @override
  Species? get species;
  @override
  @JsonKey(ignore: true)
  _$$_ChainCopyWith<_$_Chain> get copyWith =>
      throw _privateConstructorUsedError;
}
