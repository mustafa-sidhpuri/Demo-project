import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techypanther/core/Widgets/AppFlushBar.dart';
import 'package:techypanther/core/Widgets/LoadingOverlay.dart';
import 'package:techypanther/features/SignUp/bloc/signup_bloc.dart';

import 'Widgets/SignUpBody.dart';

class SignUpViewPage extends StatelessWidget {
  const SignUpViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          LoadingOverlay.hide();
          showFlushBar(context, message: state.successMessage);
        }
        if (state is SignupFailure) {
          LoadingOverlay.hide();
          showFlushBar(context, message: state.errorMessage, isError: true);
        }
        if (state is SignupLoading) {
          LoadingOverlay.show(context);
        }
      },
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        body: SignUpBody(),
      ),
    );
  }
}
