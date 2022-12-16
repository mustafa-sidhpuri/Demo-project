part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {
  final String successMessage;
  SignupSuccess({this.successMessage = "Sign up successful"});
}

class SignupFailure extends SignupState {
  final String errorMessage;
  SignupFailure({this.errorMessage = "Singup failed, please try again"});
}
