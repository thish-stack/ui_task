import 'dart:ui';

import 'package:flutter/services.dart';

class OrientationHelper {
  static void setOrientation() {
    final FlutterView view = PlatformDispatcher.instance.views.first;
    final double shortestSide =
        view.physicalSize.shortestSide / view.devicePixelRatio;

    // Lock mobile devices to portrait mode
    if (shortestSide < 600) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    }
  }
}
