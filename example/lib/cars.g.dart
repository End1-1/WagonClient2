// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarOption _$CarOptionFromJson(Map<String, dynamic> json) => CarOption(
      json['id'] as int,
      json['option'] as String,
      json['name'] as String,
      json['value'] as String,
      (json['price'] as num).toDouble(),
      json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$CarOptionToJson(CarOption instance) => <String, dynamic>{
      'id': instance.id,
      'option': instance.option,
      'name': instance.name,
      'value': instance.value,
      'price': instance.price,
      'selected': instance.selected,
    };

Car _$CarFromJson(Map<String, dynamic> json) => Car(
      json['class_id'] as int,
      json['name'] as String,
      (json['min_price'] as num?)?.toDouble(),
      (json['coin'] as num?)?.toDouble(),
      json['closest_driver_duration'] as int,
      json['selected'] as int? ?? 0,
      (json['car_options'] as List<dynamic>)
          .map((e) => CarOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['rent_times'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'class_id': instance.class_id,
      'name': instance.name,
      'min_price': instance.min_price,
      'coin': instance.coin,
      'closest_driver_duration': instance.closest_driver_duration,
      'selected': instance.selected,
      'car_options': instance.car_options,
      'rent_times': instance.rent_times,
    };

CarClasses _$CarClassesFromJson(Map<String, dynamic> json) => CarClasses(
      (json['car_classes'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CarClassesToJson(CarClasses instance) =>
    <String, dynamic>{
      'car_classes': instance.car_classes,
    };
