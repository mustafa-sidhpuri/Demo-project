import 'dart:async';
import 'dart:developer';

import 'package:chopper/chopper.dart';

class ResponseLogger extends ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    if (response.isSuccessful) {
      log("=====================================RESPONSE=====================================",
          name: "");
      log("==> ${response.statusCode.toString()}", name: "Response code");
      log("==> ${response.bodyString}", name: "Response body");
      log(
        "====================================================================================",
      );
    } else {
      log("",
          error:
              "=====================================ERROR=====================================",
          name: "Error");
      log("",
          error:
              "${response.base.request?.method.toString()} ==>  ${response.base.request?.url.toString()}",
          name: "Requested URL");
      log("", name: "Error", error: "==> ${response.bodyString}");
      log(
        "======================================================================================",
      );
    }
    return response;
  }
}
