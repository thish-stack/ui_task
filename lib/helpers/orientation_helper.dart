import 'package:flutter/services.dart';
import 'dart:ui';

class OrientationHelper {
  static void setOrientation() {
   
    final FlutterView view = PlatformDispatcher.instance.views.first;    
    
    final double shortestSide = view.physicalSize.shortestSide / view.devicePixelRatio;
    
    final bool isTablet = shortestSide > 600;

    if (isTablet) {
      // Allow all orientations for tablets
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    } else {
      // Lock to portrait for mobile
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    }
  }
}
