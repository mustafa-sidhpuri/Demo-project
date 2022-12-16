import 'package:chopper/chopper.dart';
import 'package:techypanther/features/SignUp/Data/Model/SignupUserResponseModel.dart';
part 'SignUpChopperService.chopper.dart';

@ChopperApi()
abstract class SignUpChopperService extends ChopperService {
  static SignUpChopperService create([ChopperClient? client]) =>
      _$SignUpChopperService(client);

  @Post(path: "/users")
  Future<Response<SignupUserResponseModel>> userSignUp(
      @Body() Map<String, dynamic> body);
}
