import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButtonFull extends StatelessWidget {
  final String title, redirectUrl;
  final Widget icon;
  final Color color;

  const SocialMediaButtonFull({Key? key, required this.title, required this.redirectUrl, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color)
      ),
      onPressed: () async {
        final Uri _url = Uri.parse(redirectUrl);

        if (!await launchUrl(_url)) {
          throw Exception('Could not launch $_url');
        }
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: 5,),
          Text(
            title,
            style: GoogleFonts.mulish(
              textStyle: Theme.of(context).textTheme.headlineSmall,
              fontSize: 15,
              fontWeight: FontWeight.w200,
              color: Colors.white
          ),
          )
        ],
      ),
    );
  }
}