import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:techypanther/core/Local%20Storage/MySecureStorage.dart';
import 'package:techypanther/core/Local%20Storage/StorageKeys.dart';
import 'package:techypanther/core/Router/RouteName.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/core/Widgets/CommonAppBar.dart';
import 'package:techypanther/features/Homepage/Presentation/Widgets/HomeScreenBody.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CommonAppBar(
        title: "Products",
        leading: const SizedBox(),
        actions: [
          TextButton(
            onPressed: () {
              signOut();
            },
            child: const AppTextWidget(
              txtTitle: "LOGOUT",
              txtColor: AppColors.primary,
            ),
          )
        ],
      ),
      body: const HomeScreenBody(),
    );
  }

  void signOut() {
    Modular.get<MySecureStorage>().addValue(StorageKeys.isLoggedIn, false);
    Modular.to.navigate(RoutesName.signUp);
  }
}
