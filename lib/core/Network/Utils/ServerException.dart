abstract class ServerExceptions {
  String message;
  ServerExceptions({this.message = "Something went wrong"});
}

class LoginException extends ServerExceptions {
  LoginException({String message = "Login failed"}) : super(message: message);
}
class SignupException extends ServerExceptions {
  SignupException({String message = "Signup failed"}) : super(message: message);
}
class FetchProductException extends ServerExceptions {
  FetchProductException({String message = "Failed to fetch products"}) : super(message: message);
}
