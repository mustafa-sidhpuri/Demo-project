import 'package:flutter/material.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/features/Homepage/Data/Model/AllProductsResponseModel.dart';
import 'package:size_config/size_config.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.product,
    this.imageHeight = 190,
    this.imageWidth = 164,
    this.hideCategory = false,
  });
  final Product product;
  final double imageHeight;
  final double imageWidth;
  final bool hideCategory;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.network(
        product.image,
        height: imageHeight.h,
        width: imageWidth.w,
        fit: BoxFit.contain,
      ),
      7.verticalSpacer,
      AppTextWidget(
          txtTitle: "${product.price}\$", fontWeight: FontWeight.bold),
      3.verticalSpacer,
      Visibility(
        visible: !hideCategory,
        child: AppTextWidget(
          txtTitle: product.category,
          txtColor: AppColors.grey,
        ),
      ),
      Visibility(visible: !hideCategory, child: 4.verticalSpacer),
      Flexible(
        child: AppTextWidget(
          txtTitle: product.title,
          maxLine: 3,
        ),
      ),
    ]);
  }
}
