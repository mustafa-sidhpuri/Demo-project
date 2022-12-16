import 'package:flutter_modular/flutter_modular.dart';
import 'package:techypanther/core/Router/RouteName.dart';
import 'package:techypanther/features/Homepage/Data/DataSource/HomeScreenChopperService.dart';
import 'package:techypanther/features/Homepage/Data/HomeScreenRepository.dart';
import 'package:techypanther/features/Homepage/Presentation/Screens/HomeViewPage.dart';
import 'package:techypanther/features/Homepage/Presentation/Screens/ProductsDetailScreen.dart';

class HomeScreenModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [Bind.lazySingleton((i) => HomeScreenRespository(), export: true)];
  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => const HomeViewPage()),
        ChildRoute(RoutesName.productDetail,
            child: (_, __) => const ProductDetailViewPage()),
      ];
}
