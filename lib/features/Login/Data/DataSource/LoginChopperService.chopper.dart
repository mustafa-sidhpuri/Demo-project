// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginChopperService.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$LoginChopperService extends LoginChopperService {
  _$LoginChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LoginChopperService;

  @override
  Future<Response<LoginResponseModel>> userLogin(Map<String, dynamic> body) {
    final String $url = '/auth/login';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<LoginResponseModel, LoginResponseModel>($request);
  }
}
