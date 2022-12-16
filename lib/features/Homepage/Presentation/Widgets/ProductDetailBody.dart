library ProductDetailsBody;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppButtonWidget.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/features/Homepage/Blocs/home_screen_bloc.dart';
import 'package:techypanther/features/Homepage/Presentation/Widgets/ProductTile.dart';
part 'ProductNameAndPrice.dart';
part 'SimilarProductListView.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenBloc _homeScreenBloc =
        BlocProvider.of<HomeScreenBloc>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              _homeScreenBloc.detailViewProduct!.image,
              height: 300,
            ),
            20.verticalSpacer,
            AppTextWidget(
              txtTitle: _homeScreenBloc.detailViewProduct!.description,
              fontSize: 13,
              txtColor: AppColors.grey,
            ),
            16.verticalSpacer,
            _ProductNameAndPrice(homeScreenBloc: _homeScreenBloc),
            10.verticalSpacer,
            AppButtonWidget(
                onPressed: () {
                  _homeScreenBloc
                      .addItemToBag(_homeScreenBloc.detailViewProduct!);
                },
                btnName: "Add to bag"),
            10.verticalSpacer,
            const AppTextWidget(
              txtTitle: "You might also like",
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            10.verticalSpacer,
            SizedBox(
              height: 230.h,
              child: _SimilarProductsListView(homeScreenBloc: _homeScreenBloc),
            ),
            20.verticalSpacer,
          ],
        ),
      ),
    );
  }
}
