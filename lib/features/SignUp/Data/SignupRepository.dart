import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:techypanther/core/Network/AppChopperClient.dart';
import 'package:techypanther/core/Network/Utils/Models/GeneralErrorModel.dart';
import 'package:techypanther/core/Network/Utils/ServerException.dart';
import 'package:techypanther/features/SignUp/Data/DataSource/SignUpChopperService.dart';
import 'package:techypanther/features/SignUp/Data/Model/SignupUserResponseModel.dart';
import 'package:techypanther/features/SignUp/Data/RequestModels/SignupUserRequestModel.dart';

class SignupRepository {
  final SignUpChopperService _signUpService =
      Modular.get<AppChopperClient>().getChopperService<SignUpChopperService>();

  Future<Either<ServerExceptions, SignupUserResponseModel>> userSignup({required SIgnupUserRequestModel requestModel}) async {
    late Response response;
    try {
      response = await _signUpService.userSignUp(requestModel.toJson());
      if (response.isSuccessful) {
        return Right(response.body!);
      } else {
        if (response.error is GeneralErrorModel) {
          return Left(SignupException(
              message: (response.error as GeneralErrorModel).error ??
                  "Signup error!"));
        }
        return Left(SignupException());
      }
    } catch (err) {
      log("", error: err.toString(), name: "${this.runtimeType}");
      return Left(SignupException());
    }
  }
}
