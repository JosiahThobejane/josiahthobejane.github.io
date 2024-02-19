import 'package:flutter/material.dart';
import 'package:website/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopLayout;
  final Widget mobileLayout;

  const ResponsiveLayout({Key? key, required this.desktopLayout, required this.mobileLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > MOBILE_LAYOUT_MAX_SIZE) {
          return desktopLayout;
        } else {
          return mobileLayout;
        }
      },
    );
  }
}