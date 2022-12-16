import 'package:flutter_modular/flutter_modular.dart';
import 'package:techypanther/features/SignUp/Data/SignupRepository.dart';
import 'package:techypanther/features/SignUp/Presentation/SignUpViewPage.dart';

class SignUpModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [Bind.lazySingleton((i) => SignupRepository(), export: true)];
  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => const SignUpViewPage())];
}
