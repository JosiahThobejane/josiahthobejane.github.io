import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/responsive.dart';
import 'package:website/view/desktop/home.dart';
import 'package:website/view/desktop/portfolio.dart';
import 'package:website/view/mobile/home.dart';
import 'package:website/view/mobile/portfolio.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>
          ResponsiveLayout(mobileLayout: MobileHome(), desktopLayout: DesktopHome()),
    ),
    GoRoute(
      path: '/portfolio',
      builder: (context, state) => ResponsiveLayout(
        mobileLayout: MobilePortfolio(),
        desktopLayout: DesktopPortfolio(),
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Josiah Thobejane',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      routerConfig: _router,
    );
  }
}
