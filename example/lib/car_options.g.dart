// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarOptions _$CarOptionsFromJson(Map<String, dynamic> json) => CarOptions(
      json['id'] as int,
      json['option'] as String,
      json['price'] as String,
      json['selected'] as bool,
    );

Map<String, dynamic> _$CarOptionsToJson(CarOptions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option': instance.option,
      'price': instance.price,
      'selected': instance.selected,
    };

CarOptionsList _$CarOptionsListFromJson(Map<String, dynamic> json) =>
    CarOptionsList(
      (json['car_options'] as List<dynamic>)
          .map((e) => CarOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CarOptionsListToJson(CarOptionsList instance) =>
    <String, dynamic>{
      'car_options': instance.car_options,
    };
