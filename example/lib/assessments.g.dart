// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Assessment _$AssessmentFromJson(Map<String, dynamic> json) => Assessment(
      json['name'] as String,
      json['option_id'] as int,
      json['assessment'] as String,
      json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$AssessmentToJson(Assessment instance) =>
    <String, dynamic>{
      'name': instance.name,
      'option_id': instance.option_id,
      'assessment': instance.assessment,
      'selected': instance.selected,
    };

AssessmentList _$AssessmentListFromJson(Map<String, dynamic> json) =>
    AssessmentList(
      (json['list'] as List<dynamic>)
          .map((e) => Assessment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssessmentListToJson(AssessmentList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
