import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final String title, redirectUrl;
  final Widget icon;
  final Color color;

  const SocialMediaButton({Key? key, required this.title, required this.redirectUrl, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final Uri _url = Uri.parse(redirectUrl);
        if (!await launchUrl(_url)) {
          throw Exception('Could not launch $_url');
        }
      },
      icon: icon,
    );
  }
}