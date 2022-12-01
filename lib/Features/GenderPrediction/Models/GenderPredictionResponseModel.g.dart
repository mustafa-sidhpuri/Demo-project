// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GenderPredictionResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenderPredictionResponseModel _$GenderPredictionResponseModelFromJson(
        Map<String, dynamic> json) =>
    GenderPredictionResponseModel(
      count: json['count'] as num,
      gender: json['gender'] as String,
      name: json['name'] as String,
      probability: json['probability'] as num,
    );

Map<String, dynamic> _$GenderPredictionResponseModelToJson(
        GenderPredictionResponseModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'gender': instance.gender,
      'name': instance.name,
      'probability': instance.probability,
    };
