import 'package:flutter/material.dart';

import 'package:techypanther/features/Login/Presentation/Widgets/LogInBody.dart';

class LoginViewPage extends StatelessWidget {
  const LoginViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginBody(),
    );
  }
}
