part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupUser extends SignupEvent {
  final SIgnupUserRequestModel requestModel;
  SignupUser({required this.requestModel});
}
