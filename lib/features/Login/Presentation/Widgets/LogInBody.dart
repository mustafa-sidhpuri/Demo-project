library LoginView;

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Constants/Vaidators.dart';
import 'package:techypanther/core/Router/RouteName.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppButtonWidget.dart';
import 'package:techypanther/core/Widgets/AppFlushBar.dart';
import 'package:techypanther/core/Widgets/AppTextFormField.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/core/Widgets/LoadingOverlay.dart';
import 'package:techypanther/core/Widgets/SocialSignInButton.dart';
import 'package:techypanther/features/Login/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'ForgotPasswordWidget.dart';
part 'LoginForm.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginFailure) {
                LoadingOverlay.hide();
                showFlushBar(context,
                    title: "Login Error", message: state.error, isError: true);
              }
              if (state is LoginSuccess) {
                LoadingOverlay.hide();

                showFlushBar(context,
                    title: "Login Success",
                    message: state.loginResponse.token ?? "null");
                Modular.to.navigate(RoutingPaths.homeScreen);
              }
              if (state is LoginLoading) {
                LoadingOverlay.show(context);
              }
            },
            child: const LoginForm()),
      ),
    );
  }
}
