import 'package:flutter_modular/flutter_modular.dart';
import 'package:techypanther/features/Login/Presentation/LoginViewPage.dart';
import 'package:techypanther/features/Login/Data/LoginRepository.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [Bind.lazySingleton((i) => LoginRepository(), export: true)];
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/", child: (context, args) => const LoginViewPage()),
    ChildRoute("/forgotpassword",
        child: (context, args) => const LoginViewPage()),
  ];
}
