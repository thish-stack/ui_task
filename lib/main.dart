import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:ui_task/helpers/orientation_helper.dart';
import 'package:ui_task/screens/dashboard_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // OrientationHelper.setOrientation();

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



// class ScreenInfoWidget extends StatefulWidget {
//   @override
//   _ScreenInfoWidgetState createState() => _ScreenInfoWidgetState();
// }

// class _ScreenInfoWidgetState extends State<ScreenInfoWidget> {
//   ui.FlutterView? _view;
//   ui.Display? _display;

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _view = View.maybeOf(context);
//     _display = _view?.display;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final physicalSize = _display?.size;
//     final devicePixelRatio = _view?.devicePixelRatio ?? 1.0;
//     final logicalSize = physicalSize != null
//         ? Size(physicalSize.width / devicePixelRatio, physicalSize.height / devicePixelRatio)
//         : Size.zero;

//     return Scaffold(
//       appBar: AppBar(title: const Text("Screen Info")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Physical Size: ${physicalSize?.width} x ${physicalSize?.height} px"),
//             Text("Logical Size: ${logicalSize.width} x ${logicalSize.height} dp"),
//             Text("Device Pixel Ratio: $devicePixelRatio"),
//           ],
//         ),
//       ),
//     );
//   }
// }