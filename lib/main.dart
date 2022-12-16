import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Router/AppRouter.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/features/Homepage/Blocs/home_screen_bloc.dart';
import 'package:techypanther/features/Login/cubit/login_cubit.dart';
import 'package:techypanther/features/SignUp/bloc/signup_bloc.dart';

void main() {
  runApp(ModularApp(module: CoreModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => SignupBloc()),
        BlocProvider(create: (context) => HomeScreenBloc()..add(FetchProductsEvent())),
      ],
      child: SizeConfigInit(
          referenceHeight: 812,
          referenceWidth: 375,
          builder: (context, orientation) {
            return MaterialApp.router(
              title: 'Techy Panther Demo',
              theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                      elevation: 2, backgroundColor: AppColors.white),
                  fontFamily: "Poppins",
                  backgroundColor: Colors.white),
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
            );
          }),
    );
  }
}
