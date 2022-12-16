// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreenChopperService.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HomeScreenChopperService extends HomeScreenChopperService {
  _$HomeScreenChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HomeScreenChopperService;

  @override
  Future<Response<List<Product>>> fetchAllProducts() {
    final String $url = '/products';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Product>, Product>($request);
  }
}
