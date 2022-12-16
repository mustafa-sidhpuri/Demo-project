import 'package:json_annotation/json_annotation.dart';

part 'LoginResponseModel.g.dart';

@JsonSerializable()
class LoginResponseModel {
  String? token;
  LoginResponseModel({this.token});

  factory LoginResponseModel.fromJson(final Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
