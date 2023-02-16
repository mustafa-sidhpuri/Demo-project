class GeneralErrorModel {
  int? status;
  Error? error;
  String? message;

  GeneralErrorModel({this.status, this.error, this.message});

  GeneralErrorModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    // error = json['error'] != null ? new Error.fromJson(json['error']) : null;
    if (json["message"] is List) {
      message = json['message'].first;
    } else {
      message = json['message'] ?? "Something went wrong!";
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.error != null) {
      data['error'] = this.error!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Error {
  String? message;
  int? status;
  int? statusCode;
  bool? isOperational;
  String? name;

  Error(
      {this.message,
      this.status,
      this.statusCode,
      this.isOperational,
      this.name});

  Error.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    statusCode = json['statusCode'];
    isOperational = json['isOperational'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['isOperational'] = this.isOperational;
    data['name'] = this.name;
    return data;
  }
}
