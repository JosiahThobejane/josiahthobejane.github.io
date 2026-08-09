import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/model/social_media.dart';

Color desktopViewIconColor = Colors.white;
Color mobileViewIconColor = Colors.black;

class SocialMediaRepo {

  List<SocialMediaButtonModel> desktopButtons = [
    SocialMediaButtonModel(
      title: "LinkedIn",
      icon: FaIcon(FontAwesomeIcons.linkedin, color: desktopViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "https://linkedin.com/in/josiahthobejane"),
    SocialMediaButtonModel(
      title: "Github",
      icon: FaIcon(FontAwesomeIcons.github, color: desktopViewIconColor),
      color:Color.fromRGBO(20, 28, 58, 1),
      redirectUrl: "https://github.com/josiahthobejane"
    ),
      SocialMediaButtonModel(
      title: "Twitter",
      icon: FaIcon(FontAwesomeIcons.twitter, color: desktopViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "https://twitter.com/josiahthobejane"
    ),
  ];

    List<SocialMediaButtonModel> mobileButtons = [
    SocialMediaButtonModel(
      title: "LinkedIn",
      icon: FaIcon(FontAwesomeIcons.linkedin, color: mobileViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "https://linkedin.com/in/josiahthobejane"),
    SocialMediaButtonModel(
      title: "Github",
      icon: FaIcon(FontAwesomeIcons.github, color: mobileViewIconColor),
      color:Color.fromRGBO(20, 28, 58, 1),
      redirectUrl: "https://github.com/josiahthobejane"
    ),
      SocialMediaButtonModel(
      title: "Twitter",
      icon: FaIcon(FontAwesomeIcons.twitter, color: mobileViewIconColor,),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "https://twitter.com/josiahthobejane"
    ),
  ];
}