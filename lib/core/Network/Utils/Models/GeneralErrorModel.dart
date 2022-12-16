import 'package:json_annotation/json_annotation.dart';

part 'GeneralErrorModel.g.dart';

@JsonSerializable()
class GeneralErrorModel {
  String? error;
  GeneralErrorModel({this.error});

  factory GeneralErrorModel.fromJson(final Map<String, dynamic> json) {
    return _$GeneralErrorModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GeneralErrorModelToJson(this);

  @override
  String toString() => error ?? "Error occured!";
}
