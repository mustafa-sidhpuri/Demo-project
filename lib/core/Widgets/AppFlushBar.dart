import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';

void showFlushBar(
  BuildContext context, {
  String title = " FLushbar",
  String message = "",
  bool isError = false,
}) {
  Flushbar(
    titleText: AppTextWidget(
      txtTitle: title,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      txtColor: AppColors.white,
    ),
    messageText: AppTextWidget(
      txtTitle: message,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      txtColor: AppColors.white,
    ),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    backgroundColor: isError ? AppColors.error : AppColors.success,
    showProgressIndicator: false,
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.FLOATING,
    reverseAnimationCurve: Curves.decelerate,
    forwardAnimationCurve: Curves.elasticOut,
    boxShadows: const [
      BoxShadow(
          color: AppColors.black10, offset: Offset(0.0, 2.0), blurRadius: 3.0)
    ],
    // backgroundGradient:
    //     const LinearGradient(colors: [Colors.blueGrey, Colors.black]),
    isDismissible: true,
    duration: const Duration(seconds: 4),
  ).show(context);
}
