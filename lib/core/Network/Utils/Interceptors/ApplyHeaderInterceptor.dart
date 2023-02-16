import 'dart:async';

import 'package:chopper/chopper.dart';

class ApplyHeaderInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    final String token = "";
    return applyHeader(request, 'Authorization', 'Bearer $token');
  }
}
