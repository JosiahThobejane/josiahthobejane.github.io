import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/repo/social_media.dart';
import 'package:website/view/widgets/social_media_button.dart';

class MobileHome extends StatelessWidget {
  MobileHome({Key? key}) : super(key: key);

  SocialMediaRepo socialMediaRepo = new SocialMediaRepo();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Josiah Thobejane',
            style: GoogleFonts.mulish(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Color.fromRGBO(20, 28, 59, 1)
          ),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mobile Developer',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 48,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(20, 28, 59, 1)
              ),
            ),
            Gutter(),
            Text(
                'Lover of Bots, finding Flutter amazing 👨🏿‍💻💙',
                style: GoogleFonts.mulish(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(20, 28, 59, 1)
              ),
            ),
            Gutter(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < socialMediaRepo.mobileButtons.length; i++) ... [
                  SocialMediaButton(
                    title: socialMediaRepo.mobileButtons[i].title,
                    color: socialMediaRepo.mobileButtons[i].color,
                    icon: socialMediaRepo.mobileButtons[i].icon,
                    redirectUrl: socialMediaRepo.mobileButtons[i].redirectUrl,
                  ),
                  if (i == 1) ... [
                    SocialMediaButton(
                      title: 'Portfolio',
                      color: Color.fromRGBO(195, 195, 195, 1),
                      icon: FaIcon(FontAwesomeIcons.code, color: mobileViewIconColor),
                      redirectUrl: '',
                      onTap: () => context.go('/portfolio'),
                    ),
                  ]
                ],
              ],
            )
          ],
        ),
      ),
    );
  }
}