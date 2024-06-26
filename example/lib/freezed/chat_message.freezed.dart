// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  int get order_conversation_talk_id => throw _privateConstructorUsedError;
  int get order_conversation_id => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {int order_conversation_talk_id,
      int order_conversation_id,
      String created_at,
      String message});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_conversation_talk_id = null,
    Object? order_conversation_id = null,
    Object? created_at = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      order_conversation_talk_id: null == order_conversation_talk_id
          ? _value.order_conversation_talk_id
          : order_conversation_talk_id // ignore: cast_nullable_to_non_nullable
              as int,
      order_conversation_id: null == order_conversation_id
          ? _value.order_conversation_id
          : order_conversation_id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int order_conversation_talk_id,
      int order_conversation_id,
      String created_at,
      String message});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_conversation_talk_id = null,
    Object? order_conversation_id = null,
    Object? created_at = null,
    Object? message = null,
  }) {
    return _then(_$ChatMessageImpl(
      order_conversation_talk_id: null == order_conversation_talk_id
          ? _value.order_conversation_talk_id
          : order_conversation_talk_id // ignore: cast_nullable_to_non_nullable
              as int,
      order_conversation_id: null == order_conversation_id
          ? _value.order_conversation_id
          : order_conversation_id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl(
      {required this.order_conversation_talk_id,
      required this.order_conversation_id,
      required this.created_at,
      required this.message});

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final int order_conversation_talk_id;
  @override
  final int order_conversation_id;
  @override
  final String created_at;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatMessage(order_conversation_talk_id: $order_conversation_talk_id, order_conversation_id: $order_conversation_id, created_at: $created_at, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.order_conversation_talk_id,
                    order_conversation_talk_id) ||
                other.order_conversation_talk_id ==
                    order_conversation_talk_id) &&
            (identical(other.order_conversation_id, order_conversation_id) ||
                other.order_conversation_id == order_conversation_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order_conversation_talk_id,
      order_conversation_id, created_at, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required final int order_conversation_talk_id,
      required final int order_conversation_id,
      required final String created_at,
      required final String message}) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  int get order_conversation_talk_id;
  @override
  int get order_conversation_id;
  @override
  String get created_at;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessageList _$ChatMessageListFromJson(Map<String, dynamic> json) {
  return _ChatMessageList.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageList {
  List<ChatMessage> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageListCopyWith<ChatMessageList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageListCopyWith<$Res> {
  factory $ChatMessageListCopyWith(
          ChatMessageList value, $Res Function(ChatMessageList) then) =
      _$ChatMessageListCopyWithImpl<$Res, ChatMessageList>;
  @useResult
  $Res call({List<ChatMessage> list});
}

/// @nodoc
class _$ChatMessageListCopyWithImpl<$Res, $Val extends ChatMessageList>
    implements $ChatMessageListCopyWith<$Res> {
  _$ChatMessageListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageListImplCopyWith<$Res>
    implements $ChatMessageListCopyWith<$Res> {
  factory _$$ChatMessageListImplCopyWith(_$ChatMessageListImpl value,
          $Res Function(_$ChatMessageListImpl) then) =
      __$$ChatMessageListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatMessage> list});
}

/// @nodoc
class __$$ChatMessageListImplCopyWithImpl<$Res>
    extends _$ChatMessageListCopyWithImpl<$Res, _$ChatMessageListImpl>
    implements _$$ChatMessageListImplCopyWith<$Res> {
  __$$ChatMessageListImplCopyWithImpl(
      _$ChatMessageListImpl _value, $Res Function(_$ChatMessageListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ChatMessageListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageListImpl implements _ChatMessageList {
  const _$ChatMessageListImpl({required final List<ChatMessage> list})
      : _list = list;

  factory _$ChatMessageListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageListImplFromJson(json);

  final List<ChatMessage> _list;
  @override
  List<ChatMessage> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ChatMessageList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageListImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageListImplCopyWith<_$ChatMessageListImpl> get copyWith =>
      __$$ChatMessageListImplCopyWithImpl<_$ChatMessageListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageListImplToJson(
      this,
    );
  }
}

abstract class _ChatMessageList implements ChatMessageList {
  const factory _ChatMessageList({required final List<ChatMessage> list}) =
      _$ChatMessageListImpl;

  factory _ChatMessageList.fromJson(Map<String, dynamic> json) =
      _$ChatMessageListImpl.fromJson;

  @override
  List<ChatMessage> get list;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageListImplCopyWith<_$ChatMessageListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
