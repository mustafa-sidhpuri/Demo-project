library MyBagViewPage;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppButtonWidget.dart';
import 'package:techypanther/core/Widgets/AppTextFormField.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/core/Widgets/CommonAppBar.dart';
import 'package:techypanther/features/Homepage/Blocs/home_screen_bloc.dart';
import 'package:collection/collection.dart';
part '../Widgets/ItemsInBagWidget.dart';

class MyBagViewPage extends StatelessWidget {
  const MyBagViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _homeBloc = BlocProvider.of<HomeScreenBloc>(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CommonAppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            55.verticalSpacer,
            const AppTextWidget(
              txtTitle: "My Bag",
              fontSize: 34,
              fontWeight: FontWeight.w900,
            ),
            24.verticalSpacer,
            AppTextFormField(
              hintText: "Enter your promoode",
              suffixIcon: Container(
                  color: AppColors.grey5,
                  child: const Icon(
                    Icons.arrow_forward,
                    color: AppColors.white,
                  )),
            ),
            23.verticalSpacer,
            Expanded(
              child: ListView.builder(
                  itemCount: _homeBloc.itemsInBagList.length,
                  itemBuilder: (context, index) => ItemsInBagWidget(
                      imageUrl: _homeBloc.itemsInBagList[index].image,
                      itemName: _homeBloc.itemsInBagList[index].title,
                      price: _homeBloc.itemsInBagList[index].price.toString(),
                      category: _homeBloc.itemsInBagList[index].category)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTextWidget(
                  txtTitle: "TOTAL",
                  fontWeight: FontWeight.w500,
                ),
                AppTextWidget(
                    fontWeight: FontWeight.w900,
                    txtTitle: _homeBloc.itemsInBagList
                        .map((e) => e.price)
                        .sum
                        .toString()),
              ],
            ),
            24.verticalSpacer,
            AppButtonWidget(onPressed: () {}, btnName: "CHECKOUT"),
            25.verticalSpacer
          ],
        ),
      ),
    );
  }
}
