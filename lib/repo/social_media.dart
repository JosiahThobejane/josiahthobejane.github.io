import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:website/model/social_media.dart';

class SocialMediaRepo {
  List<SocialMediaButtonModel> buttons = [
    SocialMediaButtonModel(
      title: "LinkedIn",
      icon: Icon(EvaIcons.linkedin),
      color: Colors.blue,
      redirectUrl: "redirectUrl"),
    SocialMediaButtonModel(
      title: "Github",
      icon: Icon(EvaIcons.github),
      color: Colors.black,
      redirectUrl: "redirectUrl"
    ),
      SocialMediaButtonModel(
      title: "Portfolio",
      icon: Icon(EvaIcons.heart),
      color: Colors.white54,
      redirectUrl: "redirectUrl"
    ),
      SocialMediaButtonModel(
      title: "Twitter",
      icon: Icon(EvaIcons.twitter),
      color: Colors.blue,
      redirectUrl: "redirectUrl"
    ),
  ];
}