import 'package:flutter/material.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/core/Widgets/CommonAppBar.dart';
import 'package:techypanther/features/Homepage/Presentation/Widgets/HomeScreenBody.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      appBar: CommonAppBar(title: "Products",),
      body: HomeScreenBody(),
    );
  }
}
