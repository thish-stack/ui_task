import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_task/screens/dashboard_screen.dart';
import 'package:ui_task/helpers/orientation_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  OrientationHelper.setOrientation(); 

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.manropeTextTheme(ThemeData.dark().textTheme),
      ),
      home: const DashboardScreen(),
    );
  }
}
