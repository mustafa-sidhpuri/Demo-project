import 'package:chopper/chopper.dart';

import 'Utils/Convertors/JsonToTypeConverter.dart';
import 'Utils/Interceptors/ApplyHeaderInterceptor.dart';
import 'Utils/Interceptors/RequestLogger.dart';
import 'Utils/Interceptors/ResponseLogger.dart';
import 'Utils/Models/GeneralErrorModel.dart';


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
        baseUrl: "",
        services: [
          // LoginChopperService.create(),
          
        ],
        interceptors: [
          RequestLogger(),
          ResponseLogger(),
          ApplyHeaderInterceptor(),
        ],
        converter:  const JsonToTypeConverter(jsonConvertorMap: {
          // LoginResponseModel: LoginResponseModel.fromJson,
        }),
        errorConverter:  const JsonToTypeConverter(
            jsonConvertorMap: {GeneralErrorModel: GeneralErrorModel.fromJson}));
  }
}


// Example


// class AppChopperClient {
//   late ChopperClient _client;
//   AppChopperClient() {
//     createChopperClient();
//   }

//   T getChopperService<T extends ChopperService>() {
//     return _client.getService<T>();
//   }

//   void createChopperClient() {
//     _client = ChopperClient(
//         baseUrl: "Base URl",
//         services: [
//           LoginChopperService.create(),
//           CustomerChopperService.create(),
//           ProductChopperService.create(),
          
//         ],
//         interceptors: [
//           RequestLogger(),
//           ResponseLogger(),
//           ApplyHeaderInterceptor(),
//         ],
//         converter: const JsonToTypeConverter(jsonConvertorMap: {
//           LoginResponseModel: LoginResponseModel.fromJson,
//           CustomerResponseModel: CustomerResponseModel.fromJson,
//           SuccessResponseModel: SuccessResponseModel.fromJson,
//         }),
//         errorConverter: const JsonToTypeConverter(
//             jsonConvertorMap: {GeneralErrorModel: GeneralErrorModel.fromJson}));
//   }
// }


// Login chopper service example
// @ChopperApi()
// abstract class LoginChopperService extends ChopperService {
//   static LoginChopperService create({ChopperClient? client}) =>
//       _$LoginChopperService(client);

//   @Post(path: "/front/auth/login")
//   Future<Response<LoginResponseModel>> userLogin(
//       {@body required Map<String, dynamic> body});
//   @Get(path: "/front/auth/year")
//   Future<Response<RegisterListResponseModel>> getRegisterList();
// }

// service access
// final _service =
//       Modular.get<AppChopperClient>().getChopperService<LoginChopperService>();

// Terminal command to generate .chopper files
// flutter pub run build_runner build --delete-conflicting-outputs