import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:website/model/social_media.dart';

class SocialMediaRepo {
  List<SocialMediaButtonModel> buttons = [
    SocialMediaButtonModel(
      title: "LinkedIn",
      icon: Icon(EvaIcons.linkedin),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "redirectUrl"),
    SocialMediaButtonModel(
      title: "Github",
      icon: Icon(EvaIcons.github),
      color:Color.fromRGBO(20, 28, 58, 1),
      redirectUrl: "redirectUrl"
    ),
      SocialMediaButtonModel(
      title: "Portfolio",
      icon: Icon(EvaIcons.heart),
      color: Color.fromRGBO(0, 0, 0, 0.7),
      redirectUrl: "redirectUrl"
    ),
      SocialMediaButtonModel(
      title: "Twitter",
      icon: Icon(EvaIcons.twitter),
      color: Color.fromRGBO(62, 142, 208, 1),
      redirectUrl: "redirectUrl"
    ),
  ];
}