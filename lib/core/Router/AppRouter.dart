import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:techypanther/Demo/SignUpModule.dart';
import 'package:techypanther/core/Local%20Storage/MySecureStorage.dart';
import 'package:techypanther/core/Local%20Storage/StorageKeys.dart';
import 'package:techypanther/core/Network/AppChopperClient.dart';
import 'package:techypanther/core/Router/RouteName.dart';
import 'package:techypanther/features/Homepage/HomeScreenModule.dart';
import 'package:techypanther/features/Login/LoginModule.dart';
import 'package:techypanther/features/SignUp/Presentation/SignUpViewPage.dart';

class CoreModule extends Module {
  @override
  List<Module> get imports => [
        LoginModule(),
        SignUpModule(),
        HomeScreenModule(),
      ];

  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) =>
            MySecureStorage(secureStorage: const FlutterSecureStorage())),
        Bind.lazySingleton((i) => AppChopperClient()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(RoutesName.signUp,
            child: (context, args) => const SignUpViewPage()),
        ModuleRoute(RoutesName.login, module: LoginModule()),
        ModuleRoute(RoutesName.homeScreen,
            module: HomeScreenModule(), guards: [AuthGuard()]),
        WildcardRoute(
            child: (context, args) => const Center(child: Text("Not Found"))),
      ];
}

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: RoutesName.signUp);

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    bool res = await Modular.get<MySecureStorage>()
        .getBoolValue(StorageKeys.isLoggedIn);
    return res;
  }
}
