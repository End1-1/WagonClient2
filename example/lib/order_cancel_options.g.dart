// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cancel_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelOrderOption _$CancelOrderOptionFromJson(Map<String, dynamic> json) =>
    CancelOrderOption(
      json['option'] as int,
      json['name'] as String,
      json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$CancelOrderOptionToJson(CancelOrderOption instance) =>
    <String, dynamic>{
      'option': instance.option,
      'name': instance.name,
      'selected': instance.selected,
    };

CancelOrderOptionList _$CancelOrderOptionListFromJson(
        Map<String, dynamic> json) =>
    CancelOrderOptionList(
      json['aborted_id'] as int? ?? 0,
      (json['options'] as List<dynamic>)
          .map((e) => CancelOrderOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CancelOrderOptionListToJson(
        CancelOrderOptionList instance) =>
    <String, dynamic>{
      'aborted_id': instance.aborted_id,
      'options': instance.options,
    };
