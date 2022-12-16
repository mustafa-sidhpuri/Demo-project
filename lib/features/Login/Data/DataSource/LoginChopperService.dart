import 'package:chopper/chopper.dart';
import 'package:techypanther/features/Login/Data/Model/LoginResponseModel.dart';

// This is necessary for the generator to work.
part 'LoginChopperService.chopper.dart';

@ChopperApi()
abstract class LoginChopperService extends ChopperService {

    // A helper method that helps instantiating the service. 
  //You can omit this method and use the generated class directly instead.
static LoginChopperService create({ChopperClient? client}) => 
      _$LoginChopperService(client);
  @Post(path:"/auth/login")
  Future<Response<LoginResponseModel>> userLogin(
      @body Map<String, dynamic> body,);
}


