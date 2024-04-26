// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      order_conversation_talk_id: json['order_conversation_talk_id'] as int,
      order_conversation_id: json['order_conversation_id'] as int,
      created_at: json['created_at'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'order_conversation_talk_id': instance.order_conversation_talk_id,
      'order_conversation_id': instance.order_conversation_id,
      'created_at': instance.created_at,
      'message': instance.message,
    };

_$ChatMessageListImpl _$$ChatMessageListImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatMessageListImplToJson(
        _$ChatMessageListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
