// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyInfoImpl _$$CompanyInfoImplFromJson(Map<String, dynamic> json) =>
    _$CompanyInfoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      car_classes:
          (json['car_classes'] as List<dynamic>).map((e) => e as int).toList(),
      checked: json['checked'] as bool?,
    );

Map<String, dynamic> _$$CompanyInfoImplToJson(_$CompanyInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'car_classes': instance.car_classes,
      'checked': instance.checked,
    };
