// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_evolutions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonEvolutionsModel _$PokemonEvolutionsModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonEvolutionsModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonEvolutionsModel {
  dynamic get babyTriggerItem => throw _privateConstructorUsedError;
  Chain get chain => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonEvolutionsModelCopyWith<PokemonEvolutionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEvolutionsModelCopyWith<$Res> {
  factory $PokemonEvolutionsModelCopyWith(PokemonEvolutionsModel value,
          $Res Function(PokemonEvolutionsModel) then) =
      _$PokemonEvolutionsModelCopyWithImpl<$Res, PokemonEvolutionsModel>;
  @useResult
  $Res call({dynamic babyTriggerItem, Chain chain, int id});

  $ChainCopyWith<$Res> get chain;
}

/// @nodoc
class _$PokemonEvolutionsModelCopyWithImpl<$Res,
        $Val extends PokemonEvolutionsModel>
    implements $PokemonEvolutionsModelCopyWith<$Res> {
  _$PokemonEvolutionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? babyTriggerItem = freezed,
    Object? chain = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      babyTriggerItem: freezed == babyTriggerItem
          ? _value.babyTriggerItem
          : babyTriggerItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as Chain,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChainCopyWith<$Res> get chain {
    return $ChainCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonEvolutionsModelCopyWith<$Res>
    implements $PokemonEvolutionsModelCopyWith<$Res> {
  factory _$$_PokemonEvolutionsModelCopyWith(_$_PokemonEvolutionsModel value,
          $Res Function(_$_PokemonEvolutionsModel) then) =
      __$$_PokemonEvolutionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic babyTriggerItem, Chain chain, int id});

  @override
  $ChainCopyWith<$Res> get chain;
}

/// @nodoc
class __$$_PokemonEvolutionsModelCopyWithImpl<$Res>
    extends _$PokemonEvolutionsModelCopyWithImpl<$Res,
        _$_PokemonEvolutionsModel>
    implements _$$_PokemonEvolutionsModelCopyWith<$Res> {
  __$$_PokemonEvolutionsModelCopyWithImpl(_$_PokemonEvolutionsModel _value,
      $Res Function(_$_PokemonEvolutionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? babyTriggerItem = freezed,
    Object? chain = null,
    Object? id = null,
  }) {
    return _then(_$_PokemonEvolutionsModel(
      babyTriggerItem: freezed == babyTriggerItem
          ? _value.babyTriggerItem
          : babyTriggerItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as Chain,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonEvolutionsModel implements _PokemonEvolutionsModel {
  const _$_PokemonEvolutionsModel(
      {required this.babyTriggerItem, required this.chain, required this.id});

  factory _$_PokemonEvolutionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonEvolutionsModelFromJson(json);

  @override
  final dynamic babyTriggerItem;
  @override
  final Chain chain;
  @override
  final int id;

  @override
  String toString() {
    return 'PokemonEvolutionsModel(babyTriggerItem: $babyTriggerItem, chain: $chain, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonEvolutionsModel &&
            const DeepCollectionEquality()
                .equals(other.babyTriggerItem, babyTriggerItem) &&
            (identical(other.chain, chain) || other.chain == chain) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(babyTriggerItem), chain, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonEvolutionsModelCopyWith<_$_PokemonEvolutionsModel> get copyWith =>
      __$$_PokemonEvolutionsModelCopyWithImpl<_$_PokemonEvolutionsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonEvolutionsModelToJson(
      this,
    );
  }
}

abstract class _PokemonEvolutionsModel implements PokemonEvolutionsModel {
  const factory _PokemonEvolutionsModel(
      {required final dynamic babyTriggerItem,
      required final Chain chain,
      required final int id}) = _$_PokemonEvolutionsModel;

  factory _PokemonEvolutionsModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonEvolutionsModel.fromJson;

  @override
  dynamic get babyTriggerItem;
  @override
  Chain get chain;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonEvolutionsModelCopyWith<_$_PokemonEvolutionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
