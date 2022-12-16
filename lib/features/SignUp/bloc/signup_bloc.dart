import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';
import 'package:techypanther/features/SignUp/Data/RequestModels/SignupUserRequestModel.dart';
import 'package:techypanther/features/SignUp/Data/SignupRepository.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupRepository _signupUsecase = Modular.get<SignupRepository>();
  SignupBloc() : super(SignupInitial()) {
    on<SignupUser>((event, emit) async {
      emit(SignupLoading());
      await _signUpUser(requestModel: event.requestModel, emit: emit);
    });
  }
  Future<void> _signUpUser(
      {required SIgnupUserRequestModel requestModel,
      required Emitter<SignupState> emit}) async {
    final result = await _signupUsecase.userSignup(requestModel: requestModel);

    result.fold((l) => emit(SignupFailure(errorMessage: l.message)),
        (r) => emit(SignupSuccess(successMessage: "Your id is ${r.id}")));
  }
}
