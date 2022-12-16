import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:techypanther/core/Network/AppChopperClient.dart';
import 'package:techypanther/core/Network/Utils/Models/GeneralErrorModel.dart';
import 'package:techypanther/core/Network/Utils/ServerException.dart';
import 'package:techypanther/features/Login/Data/DataSource/LoginChopperService.dart';
import 'package:techypanther/features/Login/Data/Model/LoginResponseModel.dart';

class LoginRepository {
  LoginRepository();
  final LoginChopperService _loginService =
      Modular.get<AppChopperClient>().getChopperService<LoginChopperService>();

  Future<Either<ServerExceptions, LoginResponseModel>> userLogin(
      {required String username, required password}) async {
    try {
      final response = await _loginService
          .userLogin({"username": username, "password": password});

      if (response.isSuccessful) {
        return Right(response.body!);
      } else {
        return Left(LoginException(
            message: (response.error! as GeneralErrorModel).error ?? "N/A"));
      }
    } catch (err) {
      log(err.toString(), name: "Exception");
      return Left(LoginException());
    }
  }
}
