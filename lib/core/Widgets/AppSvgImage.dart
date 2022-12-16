import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum SvgType {
  Asset,
  String,
  Network,
  // Memory
}

class AppSvgImage extends StatelessWidget {
  const AppSvgImage(
      {super.key, this.svgType = SvgType.Asset, required this.image});
  final SvgType svgType;
  final String image;
  @override
  Widget build(BuildContext context) {
    switch (svgType) {
      case SvgType.Asset:
        return SvgPicture.asset(image);
      
      case SvgType.String:
        return SvgPicture.string(image);
      case SvgType.Network:
        return SvgPicture.network(image);
    }
  }
}
