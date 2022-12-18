// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'red_blue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedBlue _$RedBlueFromJson(Map<String, dynamic> json) {
  return _RedBlue.fromJson(json);
}

/// @nodoc
mixin _$RedBlue {
  String get backDefault => throw _privateConstructorUsedError;
  String get backGray => throw _privateConstructorUsedError;
  String get backTransparent => throw _privateConstructorUsedError;
  String get frontDefault => throw _privateConstructorUsedError;
  String get frontGray => throw _privateConstructorUsedError;
  String get frontTransparent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedBlueCopyWith<RedBlue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedBlueCopyWith<$Res> {
  factory $RedBlueCopyWith(RedBlue value, $Res Function(RedBlue) then) =
      _$RedBlueCopyWithImpl<$Res, RedBlue>;
  @useResult
  $Res call(
      {String backDefault,
      String backGray,
      String backTransparent,
      String frontDefault,
      String frontGray,
      String frontTransparent});
}

/// @nodoc
class _$RedBlueCopyWithImpl<$Res, $Val extends RedBlue>
    implements $RedBlueCopyWith<$Res> {
  _$RedBlueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backGray = null,
    Object? backTransparent = null,
    Object? frontDefault = null,
    Object? frontGray = null,
    Object? frontTransparent = null,
  }) {
    return _then(_value.copyWith(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backGray: null == backGray
          ? _value.backGray
          : backGray // ignore: cast_nullable_to_non_nullable
              as String,
      backTransparent: null == backTransparent
          ? _value.backTransparent
          : backTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontGray: null == frontGray
          ? _value.frontGray
          : frontGray // ignore: cast_nullable_to_non_nullable
              as String,
      frontTransparent: null == frontTransparent
          ? _value.frontTransparent
          : frontTransparent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RedBlueCopyWith<$Res> implements $RedBlueCopyWith<$Res> {
  factory _$$_RedBlueCopyWith(
          _$_RedBlue value, $Res Function(_$_RedBlue) then) =
      __$$_RedBlueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String backDefault,
      String backGray,
      String backTransparent,
      String frontDefault,
      String frontGray,
      String frontTransparent});
}

/// @nodoc
class __$$_RedBlueCopyWithImpl<$Res>
    extends _$RedBlueCopyWithImpl<$Res, _$_RedBlue>
    implements _$$_RedBlueCopyWith<$Res> {
  __$$_RedBlueCopyWithImpl(_$_RedBlue _value, $Res Function(_$_RedBlue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backGray = null,
    Object? backTransparent = null,
    Object? frontDefault = null,
    Object? frontGray = null,
    Object? frontTransparent = null,
  }) {
    return _then(_$_RedBlue(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backGray: null == backGray
          ? _value.backGray
          : backGray // ignore: cast_nullable_to_non_nullable
              as String,
      backTransparent: null == backTransparent
          ? _value.backTransparent
          : backTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontGray: null == frontGray
          ? _value.frontGray
          : frontGray // ignore: cast_nullable_to_non_nullable
              as String,
      frontTransparent: null == frontTransparent
          ? _value.frontTransparent
          : frontTransparent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedBlue implements _RedBlue {
  const _$_RedBlue(
      {required this.backDefault,
      required this.backGray,
      required this.backTransparent,
      required this.frontDefault,
      required this.frontGray,
      required this.frontTransparent});

  factory _$_RedBlue.fromJson(Map<String, dynamic> json) =>
      _$$_RedBlueFromJson(json);

  @override
  final String backDefault;
  @override
  final String backGray;
  @override
  final String backTransparent;
  @override
  final String frontDefault;
  @override
  final String frontGray;
  @override
  final String frontTransparent;

  @override
  String toString() {
    return 'RedBlue(backDefault: $backDefault, backGray: $backGray, backTransparent: $backTransparent, frontDefault: $frontDefault, frontGray: $frontGray, frontTransparent: $frontTransparent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RedBlue &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.backGray, backGray) ||
                other.backGray == backGray) &&
            (identical(other.backTransparent, backTransparent) ||
                other.backTransparent == backTransparent) &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontGray, frontGray) ||
                other.frontGray == frontGray) &&
            (identical(other.frontTransparent, frontTransparent) ||
                other.frontTransparent == frontTransparent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backDefault, backGray,
      backTransparent, frontDefault, frontGray, frontTransparent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedBlueCopyWith<_$_RedBlue> get copyWith =>
      __$$_RedBlueCopyWithImpl<_$_RedBlue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedBlueToJson(
      this,
    );
  }
}

abstract class _RedBlue implements RedBlue {
  const factory _RedBlue(
      {required final String backDefault,
      required final String backGray,
      required final String backTransparent,
      required final String frontDefault,
      required final String frontGray,
      required final String frontTransparent}) = _$_RedBlue;

  factory _RedBlue.fromJson(Map<String, dynamic> json) = _$_RedBlue.fromJson;

  @override
  String get backDefault;
  @override
  String get backGray;
  @override
  String get backTransparent;
  @override
  String get frontDefault;
  @override
  String get frontGray;
  @override
  String get frontTransparent;
  @override
  @JsonKey(ignore: true)
  _$$_RedBlueCopyWith<_$_RedBlue> get copyWith =>
      throw _privateConstructorUsedError;
}
