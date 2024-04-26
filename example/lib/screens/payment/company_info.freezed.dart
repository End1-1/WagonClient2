// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyInfo _$CompanyInfoFromJson(Map<String, dynamic> json) {
  return _CompanyInfo.fromJson(json);
}

/// @nodoc
mixin _$CompanyInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<int> get car_classes => throw _privateConstructorUsedError;
  bool? get checked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyInfoCopyWith<CompanyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoCopyWith<$Res> {
  factory $CompanyInfoCopyWith(
          CompanyInfo value, $Res Function(CompanyInfo) then) =
      _$CompanyInfoCopyWithImpl<$Res, CompanyInfo>;
  @useResult
  $Res call({int id, String name, List<int> car_classes, bool? checked});
}

/// @nodoc
class _$CompanyInfoCopyWithImpl<$Res, $Val extends CompanyInfo>
    implements $CompanyInfoCopyWith<$Res> {
  _$CompanyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? car_classes = null,
    Object? checked = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      car_classes: null == car_classes
          ? _value.car_classes
          : car_classes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyInfoImplCopyWith<$Res>
    implements $CompanyInfoCopyWith<$Res> {
  factory _$$CompanyInfoImplCopyWith(
          _$CompanyInfoImpl value, $Res Function(_$CompanyInfoImpl) then) =
      __$$CompanyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<int> car_classes, bool? checked});
}

/// @nodoc
class __$$CompanyInfoImplCopyWithImpl<$Res>
    extends _$CompanyInfoCopyWithImpl<$Res, _$CompanyInfoImpl>
    implements _$$CompanyInfoImplCopyWith<$Res> {
  __$$CompanyInfoImplCopyWithImpl(
      _$CompanyInfoImpl _value, $Res Function(_$CompanyInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? car_classes = null,
    Object? checked = freezed,
  }) {
    return _then(_$CompanyInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      car_classes: null == car_classes
          ? _value._car_classes
          : car_classes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyInfoImpl extends _CompanyInfo {
  const _$CompanyInfoImpl(
      {required this.id,
      required this.name,
      required final List<int> car_classes,
      required this.checked})
      : _car_classes = car_classes,
        super._();

  factory _$CompanyInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<int> _car_classes;
  @override
  List<int> get car_classes {
    if (_car_classes is EqualUnmodifiableListView) return _car_classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_car_classes);
  }

  @override
  final bool? checked;

  @override
  String toString() {
    return 'CompanyInfo(id: $id, name: $name, car_classes: $car_classes, checked: $checked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._car_classes, _car_classes) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_car_classes), checked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyInfoImplCopyWith<_$CompanyInfoImpl> get copyWith =>
      __$$CompanyInfoImplCopyWithImpl<_$CompanyInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyInfoImplToJson(
      this,
    );
  }
}

abstract class _CompanyInfo extends CompanyInfo {
  const factory _CompanyInfo(
      {required final int id,
      required final String name,
      required final List<int> car_classes,
      required final bool? checked}) = _$CompanyInfoImpl;
  const _CompanyInfo._() : super._();

  factory _CompanyInfo.fromJson(Map<String, dynamic> json) =
      _$CompanyInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<int> get car_classes;
  @override
  bool? get checked;
  @override
  @JsonKey(ignore: true)
  _$$CompanyInfoImplCopyWith<_$CompanyInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
