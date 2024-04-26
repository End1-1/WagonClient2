// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardInfo _$CardInfoFromJson(Map<String, dynamic> json) {
  return _CardInfo.fromJson(json);
}

/// @nodoc
mixin _$CardInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  int get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardInfoCopyWith<CardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardInfoCopyWith<$Res> {
  factory $CardInfoCopyWith(CardInfo value, $Res Function(CardInfo) then) =
      _$CardInfoCopyWithImpl<$Res, CardInfo>;
  @useResult
  $Res call({String id, String name, String number, int selected});
}

/// @nodoc
class _$CardInfoCopyWithImpl<$Res, $Val extends CardInfo>
    implements $CardInfoCopyWith<$Res> {
  _$CardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardInfoImplCopyWith<$Res>
    implements $CardInfoCopyWith<$Res> {
  factory _$$CardInfoImplCopyWith(
          _$CardInfoImpl value, $Res Function(_$CardInfoImpl) then) =
      __$$CardInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String number, int selected});
}

/// @nodoc
class __$$CardInfoImplCopyWithImpl<$Res>
    extends _$CardInfoCopyWithImpl<$Res, _$CardInfoImpl>
    implements _$$CardInfoImplCopyWith<$Res> {
  __$$CardInfoImplCopyWithImpl(
      _$CardInfoImpl _value, $Res Function(_$CardInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? selected = null,
  }) {
    return _then(_$CardInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardInfoImpl implements _CardInfo {
  const _$CardInfoImpl(
      {required this.id,
      required this.name,
      required this.number,
      required this.selected});

  factory _$CardInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String number;
  @override
  final int selected;

  @override
  String toString() {
    return 'CardInfo(id: $id, name: $name, number: $number, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, number, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardInfoImplCopyWith<_$CardInfoImpl> get copyWith =>
      __$$CardInfoImplCopyWithImpl<_$CardInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardInfoImplToJson(
      this,
    );
  }
}

abstract class _CardInfo implements CardInfo {
  const factory _CardInfo(
      {required final String id,
      required final String name,
      required final String number,
      required final int selected}) = _$CardInfoImpl;

  factory _CardInfo.fromJson(Map<String, dynamic> json) =
      _$CardInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get number;
  @override
  int get selected;
  @override
  @JsonKey(ignore: true)
  _$$CardInfoImplCopyWith<_$CardInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
