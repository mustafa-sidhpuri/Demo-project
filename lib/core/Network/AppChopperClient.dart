import 'package:chopper/chopper.dart';
import 'package:techypanther/core/Network/Utils/Convertors/JsonToTypeConverter.dart';
import 'package:techypanther/core/Network/Utils/Interceptors/RequestLogger.dart';
import 'package:techypanther/core/Network/Utils/Interceptors/ResponseLogger.dart';
import 'package:techypanther/core/Network/Utils/Models/GeneralErrorModel.dart';
import 'package:techypanther/features/Homepage/Data/DataSource/HomeScreenChopperService.dart';
import 'package:techypanther/features/Homepage/Data/Model/AllProductsResponseModel.dart';
import 'package:techypanther/features/Login/Data/DataSource/LoginChopperService.dart';
import 'package:techypanther/features/Login/Data/Model/LoginResponseModel.dart';
import 'package:techypanther/features/SignUp/Data/DataSource/SignUpChopperService.dart';
import 'package:techypanther/features/SignUp/Data/Model/SignupUserResponseModel.dart';

class AppChopperClient {
  late ChopperClient _client;
  AppChopperClient() {
    createChopperClient();
  }

  T getChopperService<T extends ChopperService>() {
    return _client.getService<T>();
  }

  void createChopperClient() {
    _client = ChopperClient(
        baseUrl: "https://fakestoreapi.com",
        services: [
          LoginChopperService.create(),
          SignUpChopperService.create(),
          HomeScreenChopperService.create(),
        ],
        interceptors: [
          RequestLogger(),
          ResponseLogger(),
        ],
        converter: const JsonToTypeConverter(jsonConvertorMap:  {
          LoginResponseModel: LoginResponseModel.fromJson,
          SignupUserResponseModel: SignupUserResponseModel.fromJson,
          Product: Product.fromJson,
        }),
        errorConverter: const JsonToTypeConverter(
            jsonConvertorMap: {GeneralErrorModel: GeneralErrorModel.fromJson}));
  }
}
