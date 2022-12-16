part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginResponseModel loginResponse;
  LoginSuccess({required this.loginResponse});
}

class LoginFailure extends LoginState {
  final String error;
   LoginFailure({required this.error});
}
