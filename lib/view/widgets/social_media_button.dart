import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String title, redirectUrl;
  final Widget icon;
  final Color color;

  const SocialMediaButton({Key? key, required this.title, required this.redirectUrl, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon,
    );
  }
}