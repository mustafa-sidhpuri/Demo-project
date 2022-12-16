import 'package:flutter/material.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    Key? key,
    this.height,
    this.width,
    this.padding,
    required this.onPressed,
    required this.btnName,
    this.txtColor = AppColors.white,
    this.fontSize = 16,
    this.btnColor = AppColors.primary,
    this.fontWeight = FontWeight.w700,
    this.borderRadius = 0,
    this.borderColor = AppColors.transparent,
  }) : super(key: key);
  final double? height;
  final double? width;
  final Function() onPressed;
  final String btnName;
  final Color txtColor;
  final double fontSize;
  final Color btnColor;
  final FontWeight fontWeight;
  final double borderRadius;
  final Color borderColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: height?.h,
          width: width?.w ?? double.infinity,
          padding: padding ?? EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
              color: btnColor,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(borderRadius)),
          child: AppTextWidget(
            maxLine: 3,
            textAlign: TextAlign.center,
            txtTitle: btnName,
            fontSize: fontSize,
            txtColor: txtColor,
            fontWeight: fontWeight,
          )),
    );
  }
}
