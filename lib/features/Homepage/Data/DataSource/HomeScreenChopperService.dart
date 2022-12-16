import 'package:chopper/chopper.dart';
import 'package:techypanther/features/Homepage/Data/Model/AllProductsResponseModel.dart';

part 'HomeScreenChopperService.chopper.dart';

@ChopperApi()
abstract class HomeScreenChopperService extends ChopperService {
  static HomeScreenChopperService create({ChopperClient? client}) =>
      _$HomeScreenChopperService(client);

  @Get(path: "/products")
  Future<Response<List<Product>>> fetchAllProducts();
}
