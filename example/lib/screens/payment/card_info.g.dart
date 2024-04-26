// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardInfoImpl _$$CardInfoImplFromJson(Map<String, dynamic> json) =>
    _$CardInfoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      number: json['number'] as String,
      selected: json['selected'] as int,
    );

Map<String, dynamic> _$$CardInfoImplToJson(_$CardInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'selected': instance.selected,
    };
