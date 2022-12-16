import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:techypanther/core/Constants/AppAssets.dart';


class LoadingOverlay {
  static OverlayEntry? _overlay;


  static void show(BuildContext context) {
    if (_overlay == null) {
      _overlay = OverlayEntry(
        // replace with your own layout
        builder: (context) => ColoredBox(
          color: const Color(0x80000000),
          child: Center(
            child: LottieBuilder.asset(AppAssets.loader)
          ),
        ),
      );
      Overlay.of(context)?.insert(_overlay!);
    }
  }

  static void hide() {
    if (_overlay != null) {
      _overlay?.remove();
      _overlay = null;
    }
  }
}