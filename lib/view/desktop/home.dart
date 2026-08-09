import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/repo/social_media.dart';
import 'package:website/view/widgets/social_media_button_full.dart';

class DesktopHome extends StatelessWidget {
  DesktopHome({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Mobile Developer',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 50,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(20, 28, 59, 1)
              ),
            ),
            const Gutter(),
            Text(
                'Lover of Bots, finding Flutter amazing 👨🏿‍💻💙',
                style: GoogleFonts.mulish(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(20, 28, 59, 1)
              ),
            ),
            const Gutter(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < socialMediaRepo.desktopButtons.length; i++) ... [
                  SocialMediaButtonFull(
                    title: socialMediaRepo.desktopButtons[i].title,
                    color: socialMediaRepo.desktopButtons[i].color,
                    icon: socialMediaRepo.desktopButtons[i].icon,
                    redirectUrl: socialMediaRepo.desktopButtons[i].redirectUrl,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.005,),
                  if (i == 1) ... [
                    SocialMediaButtonFull(
                      title: 'Portfolio',
                      color: Color.fromRGBO(195, 195, 195, 1),
                      icon: FaIcon(FontAwesomeIcons.code, color: desktopViewIconColor),
                      redirectUrl: '',
                      onTap: () => context.go('/portfolio'),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005,),
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