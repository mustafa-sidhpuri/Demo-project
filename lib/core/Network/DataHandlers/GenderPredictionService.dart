import 'dart:async';
import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:chopper_demo/Features/GenderPrediction/Models/GenderPredictionResponseModel.dart';
import 'package:chopper_demo/core/Network/Utils/JsonToTypeConverter.dart';

part 'GenderPredictionService.chopper.dart';

@ChopperApi()
abstract class GenderPredictionService extends ChopperService {
  GenderPredictionService();
  factory GenderPredictionService.create() {
    final client = ChopperClient(
        converter: JsonToTypeConverter(jsonConvertorMap: const {
          GenderPredictionResponseModel: GenderPredictionResponseModel.fromJson
        }),
        services: [_$GenderPredictionService()],
        baseUrl: "https://api.genderize.io/",
        interceptors: [RequestLogger(), ResponseLogger()]);
    return _$GenderPredictionService(client);
  }
  @Get()
  Future<Response<GenderPredictionResponseModel>> getGenderPrediction(
      @Query("name") String name);
}

class RequestLogger extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    log(request.url.toString(), name: "${request.method}");
    log(request.parameters.toString(), name: "Request parameters");
    return request;
  }
}

class ResponseLogger extends ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    if (response.isSuccessful) {
      log(response.statusCode.toString(), name: "Response code");
      log(response.bodyString, name: "Response body");
    } else {
      log(response.error.toString(), error: response.statusCode.toString());
    }
    return response;
  }
}
