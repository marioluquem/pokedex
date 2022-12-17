// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_group_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) {
  return _VersionGroupDetail.fromJson(json);
}

/// @nodoc
mixin _$VersionGroupDetail {
  int get levelLearnedAt => throw _privateConstructorUsedError;
  Species get moveLearnMethod => throw _privateConstructorUsedError;
  Species get versionGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionGroupDetailCopyWith<VersionGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionGroupDetailCopyWith<$Res> {
  factory $VersionGroupDetailCopyWith(
          VersionGroupDetail value, $Res Function(VersionGroupDetail) then) =
      _$VersionGroupDetailCopyWithImpl<$Res, VersionGroupDetail>;
  @useResult
  $Res call(
      {int levelLearnedAt, Species moveLearnMethod, Species versionGroup});

  $SpeciesCopyWith<$Res> get moveLearnMethod;
  $SpeciesCopyWith<$Res> get versionGroup;
}

/// @nodoc
class _$VersionGroupDetailCopyWithImpl<$Res, $Val extends VersionGroupDetail>
    implements $VersionGroupDetailCopyWith<$Res> {
  _$VersionGroupDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = null,
    Object? moveLearnMethod = null,
    Object? versionGroup = null,
  }) {
    return _then(_value.copyWith(
      levelLearnedAt: null == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int,
      moveLearnMethod: null == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as Species,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get moveLearnMethod {
    return $SpeciesCopyWith<$Res>(_value.moveLearnMethod, (value) {
      return _then(_value.copyWith(moveLearnMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get versionGroup {
    return $SpeciesCopyWith<$Res>(_value.versionGroup, (value) {
      return _then(_value.copyWith(versionGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionGroupDetailCopyWith<$Res>
    implements $VersionGroupDetailCopyWith<$Res> {
  factory _$$_VersionGroupDetailCopyWith(_$_VersionGroupDetail value,
          $Res Function(_$_VersionGroupDetail) then) =
      __$$_VersionGroupDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int levelLearnedAt, Species moveLearnMethod, Species versionGroup});

  @override
  $SpeciesCopyWith<$Res> get moveLearnMethod;
  @override
  $SpeciesCopyWith<$Res> get versionGroup;
}

/// @nodoc
class __$$_VersionGroupDetailCopyWithImpl<$Res>
    extends _$VersionGroupDetailCopyWithImpl<$Res, _$_VersionGroupDetail>
    implements _$$_VersionGroupDetailCopyWith<$Res> {
  __$$_VersionGroupDetailCopyWithImpl(
      _$_VersionGroupDetail _value, $Res Function(_$_VersionGroupDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = null,
    Object? moveLearnMethod = null,
    Object? versionGroup = null,
  }) {
    return _then(_$_VersionGroupDetail(
      levelLearnedAt: null == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int,
      moveLearnMethod: null == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as Species,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionGroupDetail implements _VersionGroupDetail {
  const _$_VersionGroupDetail(
      {required this.levelLearnedAt,
      required this.moveLearnMethod,
      required this.versionGroup});

  factory _$_VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$$_VersionGroupDetailFromJson(json);

  @override
  final int levelLearnedAt;
  @override
  final Species moveLearnMethod;
  @override
  final Species versionGroup;

  @override
  String toString() {
    return 'VersionGroupDetail(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionGroupDetail &&
            (identical(other.levelLearnedAt, levelLearnedAt) ||
                other.levelLearnedAt == levelLearnedAt) &&
            (identical(other.moveLearnMethod, moveLearnMethod) ||
                other.moveLearnMethod == moveLearnMethod) &&
            (identical(other.versionGroup, versionGroup) ||
                other.versionGroup == versionGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, levelLearnedAt, moveLearnMethod, versionGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionGroupDetailCopyWith<_$_VersionGroupDetail> get copyWith =>
      __$$_VersionGroupDetailCopyWithImpl<_$_VersionGroupDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionGroupDetailToJson(
      this,
    );
  }
}

abstract class _VersionGroupDetail implements VersionGroupDetail {
  const factory _VersionGroupDetail(
      {required final int levelLearnedAt,
      required final Species moveLearnMethod,
      required final Species versionGroup}) = _$_VersionGroupDetail;

  factory _VersionGroupDetail.fromJson(Map<String, dynamic> json) =
      _$_VersionGroupDetail.fromJson;

  @override
  int get levelLearnedAt;
  @override
  Species get moveLearnMethod;
  @override
  Species get versionGroup;
  @override
  @JsonKey(ignore: true)
  _$$_VersionGroupDetailCopyWith<_$_VersionGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
