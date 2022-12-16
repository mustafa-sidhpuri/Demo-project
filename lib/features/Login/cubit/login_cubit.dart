import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';
import 'package:techypanther/core/Local%20Storage/MySecureStorage.dart';
import 'package:techypanther/core/Local%20Storage/StorageKeys.dart';
import 'package:techypanther/features/Login/Data/Model/LoginResponseModel.dart';
import 'package:techypanther/features/Login/Data/LoginRepository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final LoginRepository _loginUsecase = Modular.get<LoginRepository>();
  Future<void> userLogin(
      {required String email, required String password}) async {
    emit(LoginLoading());
    //
    final loginResponse =
        await _loginUsecase.userLogin(username: email, password: password);
    loginResponse.fold((err) => emit(LoginFailure(error: err.message)),
        (loginResponse) {
      Modular.get<MySecureStorage>().addValue(StorageKeys.isLoggedIn, true);
      emit(LoginSuccess(loginResponse: loginResponse));
    });
  }
}
