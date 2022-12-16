import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:techypanther/core/Network/AppChopperClient.dart';
import 'package:techypanther/core/Network/Utils/Models/GeneralErrorModel.dart';
import 'package:techypanther/core/Network/Utils/ServerException.dart';
import 'package:techypanther/features/Homepage/Data/DataSource/HomeScreenChopperService.dart';
import 'package:techypanther/features/Homepage/Data/Model/AllProductsResponseModel.dart';

class HomeScreenRespository {
  final HomeScreenChopperService _service = Modular.get<AppChopperClient>()
      .getChopperService<HomeScreenChopperService>();

  Future<Either<ServerExceptions, List<Product>>>
      fetchAllProducts() async {
    try {
      Response<List<Product>> response = await _service.fetchAllProducts();
      if (response.isSuccessful) {
        return Right(response.body!);
      } else {
        final errorModel = response.error as GeneralErrorModel;
        return Left(FetchProductException(
            message: errorModel.error ?? "Failed to fetch products"));
      }
    } catch (err) {
      log("", error: err.toString(), name: "Fetch Products error");
      return Left(FetchProductException());
    }
  }
}
