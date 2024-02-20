import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:website/model/social_media.dart';

Color desktopViewIconColor = Colors.white;
Color mobileViewIconColor = Colors.black;

class SocialMediaRepo {

  List<SocialMediaButtonModel> desktopButtons = [
    SocialMediaButtonModel(
      title: "LinkedIn",
      icon: Icon(EvaIcons.linkedin, color: desktopViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "redirectUrl"),
    SocialMediaButtonModel(
      title: "Github",
      icon: Icon(EvaIcons.github, color: desktopViewIconColor),
      color:Color.fromRGBO(20, 28, 58, 1),
      redirectUrl: "redirectUrl"
    ),
      SocialMediaButtonModel(
      title: "Portfolio",
      icon: Icon(EvaIcons.code, color: desktopViewIconColor),
      color: Color.fromRGBO(195, 195, 195, 1),
      redirectUrl: "redirectUrl"
    ),
      SocialMediaButtonModel(
      title: "Twitter",
      icon: Icon(EvaIcons.twitter, color: desktopViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "redirectUrl"
    ),
  ];

    List<SocialMediaButtonModel> mobileButtons = [
    SocialMediaButtonModel(
      title: "LinkedIn",
      icon: Icon(EvaIcons.linkedin, color: mobileViewIconColor),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "redirectUrl"),
    SocialMediaButtonModel(
      title: "Github",
      icon: Icon(EvaIcons.github, color: mobileViewIconColor),
      color:Color.fromRGBO(20, 28, 58, 1),
      redirectUrl: "redirectUrl"
    ),
      SocialMediaButtonModel(
      title: "Portfolio",
      icon: Icon(EvaIcons.code, color: mobileViewIconColor,),
      color: Color.fromRGBO(195, 195, 195, 1),
      redirectUrl: "redirectUrl"
    ),
      SocialMediaButtonModel(
      title: "Twitter",
      icon: Icon(EvaIcons.twitter, color: mobileViewIconColor,),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "redirectUrl"
    ),
  ];
}