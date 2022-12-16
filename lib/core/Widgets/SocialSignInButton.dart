import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Constants/AppAssets.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppSvgImage.dart';

class SocialSignInButtons extends StatelessWidget {
  const SocialSignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        _ButtonScaffold(
          imagePath: AppAssets.googleSvg,
          onTap: () {},
        ),
        16.horizontalSpacer,
        _ButtonScaffold(
          imagePath: AppAssets.facebookSvg,
          onTap: () {},
        ),
        const Spacer()
      ],
    );
  }
}

class _ButtonScaffold extends StatelessWidget {
  const _ButtonScaffold(
      {super.key, required this.imagePath, required this.onTap});
  final String imagePath;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 34.w),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24.s),
            boxShadow: [
              BoxShadow(color: AppColors.black10, blurRadius: 8.s)
            ]),
        child: AppSvgImage(image: imagePath),
      ),
    );
  }
}
