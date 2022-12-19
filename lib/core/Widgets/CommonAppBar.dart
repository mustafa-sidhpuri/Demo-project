import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  const CommonAppBar(
      {super.key,
      this.title,
      this.titleCenter = true,
      this.titleWidget,
      this.actions,
      this.leading,
      this.elevation = 2});
  final String? title;
  final Widget? titleWidget;
  final bool titleCenter;
  final double elevation;
  final List<Widget>? actions;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ??
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
            onPressed: () => Modular.to.pop(),
          ),
      elevation: elevation,
      title: titleWidget ??
          AppTextWidget(
            txtTitle: title ?? "",
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
      centerTitle: titleCenter,
      actions: actions ?? [],
      
      
    );
  }

  @override
  Size get preferredSize => const Size(100, 50);
}
