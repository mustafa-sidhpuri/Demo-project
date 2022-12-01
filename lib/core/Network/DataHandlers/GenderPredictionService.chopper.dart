// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GenderPredictionService.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GenderPredictionService extends GenderPredictionService {
  _$GenderPredictionService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GenderPredictionService;

  @override
  Future<Response<GenderPredictionResponseModel>> getGenderPrediction(
      String name) {
    final String $url = '';
    final Map<String, dynamic> $params = <String, dynamic>{'name': name};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GenderPredictionResponseModel,
        GenderPredictionResponseModel>($request);
  }
}
