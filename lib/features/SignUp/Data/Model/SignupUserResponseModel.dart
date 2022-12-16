import 'package:json_annotation/json_annotation.dart';

part 'SignupUserResponseModel.g.dart';

@JsonSerializable()
class SignupUserResponseModel {
  int? id;
  String? email;
  String? username;
  String? password;
  Name? name;
  Address? address;
  String? phone;

  SignupUserResponseModel(
      {this.email,
      this.id,
      this.username,
      this.password,
      this.name,
      this.address,
      this.phone});

  factory SignupUserResponseModel.fromJson(final Map<String, dynamic> json) {
    return _$SignupUserResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignupUserResponseModelToJson(this);
}

@JsonSerializable()
class Name {
  String? firstname;
  String? lastname;

  Name({this.firstname, this.lastname});
  factory Name.fromJson(final Map<String, dynamic> json) {
    return _$NameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
class Address {
  String? city;
  String? street;
  int? number;
  String? zipcode;
  Geolocation? geolocation;

  Address(
      {this.city,
      this.street,
      this.number = 0,
      this.zipcode,
      this.geolocation});

  factory Address.fromJson(final Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Geolocation {
  String? lat;
  String? long;

  Geolocation({this.lat = "10.0", this.long = "10.0"});

  factory Geolocation.fromJson(final Map<String, dynamic> json) {
    return _$GeolocationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GeolocationToJson(this);
}
