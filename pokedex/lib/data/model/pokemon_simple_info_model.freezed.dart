// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_simple_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonSimpleInfoModel _$PokemonSimpleInfoModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonSimpleInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSimpleInfoModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSimpleInfoModelCopyWith<PokemonSimpleInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSimpleInfoModelCopyWith<$Res> {
  factory $PokemonSimpleInfoModelCopyWith(PokemonSimpleInfoModel value,
          $Res Function(PokemonSimpleInfoModel) then) =
      _$PokemonSimpleInfoModelCopyWithImpl<$Res, PokemonSimpleInfoModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonSimpleInfoModelCopyWithImpl<$Res,
        $Val extends PokemonSimpleInfoModel>
    implements $PokemonSimpleInfoModelCopyWith<$Res> {
  _$PokemonSimpleInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonSimpleInfoModelCopyWith<$Res>
    implements $PokemonSimpleInfoModelCopyWith<$Res> {
  factory _$$_PokemonSimpleInfoModelCopyWith(_$_PokemonSimpleInfoModel value,
          $Res Function(_$_PokemonSimpleInfoModel) then) =
      __$$_PokemonSimpleInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_PokemonSimpleInfoModelCopyWithImpl<$Res>
    extends _$PokemonSimpleInfoModelCopyWithImpl<$Res,
        _$_PokemonSimpleInfoModel>
    implements _$$_PokemonSimpleInfoModelCopyWith<$Res> {
  __$$_PokemonSimpleInfoModelCopyWithImpl(_$_PokemonSimpleInfoModel _value,
      $Res Function(_$_PokemonSimpleInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_PokemonSimpleInfoModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSimpleInfoModel extends _PokemonSimpleInfoModel {
  _$_PokemonSimpleInfoModel({required this.name, required this.url})
      : super._();

  factory _$_PokemonSimpleInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSimpleInfoModelFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonSimpleInfoModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSimpleInfoModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonSimpleInfoModelCopyWith<_$_PokemonSimpleInfoModel> get copyWith =>
      __$$_PokemonSimpleInfoModelCopyWithImpl<_$_PokemonSimpleInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSimpleInfoModelToJson(
      this,
    );
  }
}

abstract class _PokemonSimpleInfoModel extends PokemonSimpleInfoModel {
  factory _PokemonSimpleInfoModel(
      {required final String name,
      required final String url}) = _$_PokemonSimpleInfoModel;
  _PokemonSimpleInfoModel._() : super._();

  factory _PokemonSimpleInfoModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonSimpleInfoModel.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSimpleInfoModelCopyWith<_$_PokemonSimpleInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
