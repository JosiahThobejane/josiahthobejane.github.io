import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/model/social_media.dart';

Color desktopViewIconColor = Colors.white;
Color mobileViewIconColor = Colors.black;

class SocialMediaRepo {

  List<SocialMediaButtonModel> desktopButtons = [
    SocialMediaButtonModel(
      title: "LinkedIn",
      icon: Icon(FontAwesomeIcons.linkedin, color: desktopViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "https://linkedin.com/in/josiahthobejane"),
    SocialMediaButtonModel(
      title: "Github",
      icon: Icon(FontAwesomeIcons.github, color: desktopViewIconColor),
      color:Color.fromRGBO(20, 28, 58, 1),
      redirectUrl: "https://github.com/josiahthobejane"
    ),
      SocialMediaButtonModel(
      title: "Portfolio",
      icon: Icon(FontAwesomeIcons.code, color: desktopViewIconColor),
      color: Color.fromRGBO(195, 195, 195, 1),
      redirectUrl: "https://josiahthobejane.com/portfolio"
    ),
      SocialMediaButtonModel(
      title: "Twitter",
      icon: Icon(FontAwesomeIcons.twitter, color: desktopViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "https://twitter.com/josiahthobejane"
    ),
  ];

    List<SocialMediaButtonModel> mobileButtons = [
    SocialMediaButtonModel(
      title: "LinkedIn",
      icon: Icon(FontAwesomeIcons.linkedin, color: mobileViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "https://linkedin.com/in/josiahthobejane"),
    SocialMediaButtonModel(
      title: "Github",
      icon: Icon(FontAwesomeIcons.github, color: mobileViewIconColor),
      color:Color.fromRGBO(20, 28, 58, 1),
      redirectUrl: "https://github.com/josiahthobejane"
    ),
      SocialMediaButtonModel(
      title: "Portfolio",
      icon: Icon(FontAwesomeIcons.code, color: mobileViewIconColor,),
      color: Color.fromRGBO(195, 195, 195, 1),
      redirectUrl: "https://josiahthobejane.com/portfolio"
    ),
      SocialMediaButtonModel(
      title: "Twitter",
      icon: Icon(FontAwesomeIcons.twitter, color: mobileViewIconColor,),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "https://twitter.com/josiahthobejane"
    ),
  ];
}