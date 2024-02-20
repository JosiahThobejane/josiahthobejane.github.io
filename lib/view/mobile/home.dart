import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/model/social_media.dart';
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
            Text(
                'Lover of Bots, finding Flutter amazing 👨🏿‍💻💙',
                style: GoogleFonts.mulish(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(20, 28, 59, 1)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(SocialMediaButtonModel buttonModel in socialMediaRepo.mobileButtons) ... [
                  SocialMediaButton(
                    title: buttonModel.title,
                    color: buttonModel.color,
                    icon: buttonModel.icon,
                    redirectUrl: buttonModel.redirectUrl,
                  )
                ],
              ],
            )
          ],
        ),
      ),
    );
  }
}