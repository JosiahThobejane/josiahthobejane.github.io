import 'package:flutter/material.dart';

class ProjectModel {
  final String title;
  final String description;
  final List<String> tags;
  final Color color;
  final IconData? icon;
  final String? imageAsset;
  final String? imageNetworkUrl;
  final String? viewUrl;
  final String? githubUrl;

  const ProjectModel({
    required this.title,
    required this.description,
    required this.tags,
    required this.color,
    this.icon,
    this.imageAsset,
    this.imageNetworkUrl,
    this.viewUrl,
    this.githubUrl,
  });
}
