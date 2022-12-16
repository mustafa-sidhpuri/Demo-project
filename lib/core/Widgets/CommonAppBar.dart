import 'package:flutter/material.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  const CommonAppBar({super.key,this.title,this.titleCenter=true,this.titleWidget,this.actions});
  final String? title;
  final Widget? titleWidget;
  final bool titleCenter;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget??  AppTextWidget(
        txtTitle: title??"",
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
      centerTitle: titleCenter,
      actions: actions??[],
    );
  }

  @override
  Size get preferredSize => const Size(100, 50);
}
