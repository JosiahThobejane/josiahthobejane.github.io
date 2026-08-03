import 'package:flutter/material.dart';

class SocialMediaButtonModel {
  late String title;
  late Widget icon;
  late Color color;
  late String redirectUrl;

  SocialMediaButtonModel({
    required this.title,
    required this.icon,
    required this.color,
    required this.redirectUrl,
  });

}