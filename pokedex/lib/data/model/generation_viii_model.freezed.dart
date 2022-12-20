// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generation_viii_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenerationViii _$GenerationViiiFromJson(Map<String, dynamic> json) {
  return _GenerationViii.fromJson(json);
}

/// @nodoc
mixin _$GenerationViii {
  DreamWorld get icons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationViiiCopyWith<GenerationViii> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationViiiCopyWith<$Res> {
  factory $GenerationViiiCopyWith(
          GenerationViii value, $Res Function(GenerationViii) then) =
      _$GenerationViiiCopyWithImpl<$Res, GenerationViii>;
  @useResult
  $Res call({DreamWorld icons});

  $DreamWorldCopyWith<$Res> get icons;
}

/// @nodoc
class _$GenerationViiiCopyWithImpl<$Res, $Val extends GenerationViii>
    implements $GenerationViiiCopyWith<$Res> {
  _$GenerationViiiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
  }) {
    return _then(_value.copyWith(
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as DreamWorld,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamWorldCopyWith<$Res> get icons {
    return $DreamWorldCopyWith<$Res>(_value.icons, (value) {
      return _then(_value.copyWith(icons: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationViiiCopyWith<$Res>
    implements $GenerationViiiCopyWith<$Res> {
  factory _$$_GenerationViiiCopyWith(
          _$_GenerationViii value, $Res Function(_$_GenerationViii) then) =
      __$$_GenerationViiiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DreamWorld icons});

  @override
  $DreamWorldCopyWith<$Res> get icons;
}

/// @nodoc
class __$$_GenerationViiiCopyWithImpl<$Res>
    extends _$GenerationViiiCopyWithImpl<$Res, _$_GenerationViii>
    implements _$$_GenerationViiiCopyWith<$Res> {
  __$$_GenerationViiiCopyWithImpl(
      _$_GenerationViii _value, $Res Function(_$_GenerationViii) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
  }) {
    return _then(_$_GenerationViii(
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as DreamWorld,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationViii implements _GenerationViii {
  const _$_GenerationViii({required this.icons});

  factory _$_GenerationViii.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationViiiFromJson(json);

  @override
  final DreamWorld icons;

  @override
  String toString() {
    return 'GenerationViii(icons: $icons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationViii &&
            (identical(other.icons, icons) || other.icons == icons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icons);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationViiiCopyWith<_$_GenerationViii> get copyWith =>
      __$$_GenerationViiiCopyWithImpl<_$_GenerationViii>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationViiiToJson(
      this,
    );
  }
}

abstract class _GenerationViii implements GenerationViii {
  const factory _GenerationViii({required final DreamWorld icons}) =
      _$_GenerationViii;

  factory _GenerationViii.fromJson(Map<String, dynamic> json) =
      _$_GenerationViii.fromJson;

  @override
  DreamWorld get icons;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationViiiCopyWith<_$_GenerationViii> get copyWith =>
      throw _privateConstructorUsedError;
}
