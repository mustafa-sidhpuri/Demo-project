import 'package:json_annotation/json_annotation.dart';

part 'GenderPredictionResponseModel.g.dart';

@JsonSerializable()
class GenderPredictionResponseModel{
  num count;
  String gender;
  String name;
  num probability;
  GenderPredictionResponseModel({
    required this.count,
    required this.gender,
    required this.name,
    required this.probability
  }); 

  factory GenderPredictionResponseModel.fromJson(final Map<String, dynamic> json) {
    return _$GenderPredictionResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenderPredictionResponseModelToJson(this);
}