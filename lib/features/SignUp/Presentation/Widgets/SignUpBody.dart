library SignUpBody;

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart' as md;
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Router/RouteName.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppButtonWidget.dart';
import 'package:techypanther/core/Widgets/AppTextFormField.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/core/Widgets/SocialSignInButton.dart';
import 'package:techypanther/features/SignUp/Data/RequestModels/SignupUserRequestModel.dart';
import 'package:techypanther/features/SignUp/bloc/signup_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'AlreadyHaveAnAccount.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: _SignupForm(),
      ),
    );
  }
}

class _SignupForm extends StatefulWidget {
  const _SignupForm({
    Key? key,
  }) : super(key: key);

  @override
  State<_SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<_SignupForm> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _cityController;
  late TextEditingController _pincodeController;
  late TextEditingController _addressController;
  late TextEditingController _phoneController;

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _pincodeController = TextEditingController();
    _cityController = TextEditingController();
    _addressController = TextEditingController();
    _phoneController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            66.verticalSpacer,
            const AppTextWidget(
              txtTitle: "Sign Up",
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
            63.verticalSpacer,
            AppTextFormField(
              hintText: "Username",
              controller: _usernameController,
            ),
            8.verticalSpacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: AppTextFormField(
                  hintText: "First name",
                  controller: _firstNameController,
                )),
                5.horizontalSpacer,
                Flexible(
                    child: AppTextFormField(
                  hintText: "Last name",
                  controller: _lastNameController,
                )),
              ],
            ),
            8.verticalSpacer,
            AppTextFormField(
              hintText: "Address",
              controller: _addressController,
            ),
            8.verticalSpacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: AppTextFormField(
                  hintText: "City",
                  controller: _cityController,
                )),
                5.horizontalSpacer,
                Flexible(
                    child: AppTextFormField(
                  hintText: "Pincode",
                  controller: _pincodeController,
                )),
              ],
            ),
            8.verticalSpacer,
            AppTextFormField(
              hintText: "Phone",
              controller: _phoneController,
            ),
            8.verticalSpacer,
            AppTextFormField(
              hintText: "Email",
              controller: _emailController,
            ),
            8.verticalSpacer,
            AppTextFormField(
              hintText: "Password",
              controller: _passwordController,
            ),
            16.verticalSpacer,
            const _AlreadyHaveAnAccount(),
            37.verticalSpacer,
            AppButtonWidget(
                onPressed: () {
                  final _signupReqModel = SIgnupUserRequestModel()
                    ..name = Name(
                        firstname: _firstNameController.text,
                        lastname: _lastNameController.text)
                    ..address = Address(
                        city: _cityController.text,
                        zipcode: _pincodeController.text)
                    ..email = _emailController.text
                    ..username = _usernameController.text
                    ..password = _passwordController.text
                    ..phone = _phoneController.text;
                  BlocProvider.of<SignupBloc>(context)
                      .add(SignupUser(requestModel: _signupReqModel));
                },
                btnName: "Sign Up"),
            const Center(
              child: AppTextWidget(
                txtTitle: "Or sign up with social account",
                textAlign: TextAlign.center,
              ),
            ),
            12.verticalSpacer,
            const SocialSignInButtons(),
            23.verticalSpacer
          ],
        ),
      ),
    );
  }
}
