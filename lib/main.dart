import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/responsive.dart';
import 'package:website/view/desktop/home.dart';
import 'package:website/view/mobile/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: ResponsiveLayout(mobileLayout: MobileHome(), desktopLayout: DesktopHome(),),
    );
  }
}
