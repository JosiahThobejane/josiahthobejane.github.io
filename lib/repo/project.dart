import 'package:flutter/material.dart';
import 'package:website/model/project.dart';

class ProjectRepo {
  final List<ProjectModel> featuredProjects = [
    const ProjectModel(
      title: "Reign Router (2026)",
      description:
          "Take control of your home network. Block devices, set schedules and "
          "filter sites on your Rain the101 router, straight from your phone.",
      tags: ["Flutter", "GetX", "Firebase", "Dio", "Biometric Lock"],
      color: Color.fromRGBO(20, 28, 59, 1),
      icon: Icons.wifi,
      viewUrl: "https://josiahthobejane.com/reignrouter",
    ),
    const ProjectModel(
      title: "what24",
      description:
          "Copy a property or vehicle listing link from sites like Property24, open "
          "the app, and instantly start (or join) a community discussion about that "
          "exact listing — the comment section listings never had.",
      tags: ["Flutter", "GetX", "Firebase", "Firestore", "Cloud Functions"],
      color: Color.fromRGBO(26, 122, 74, 1),
      icon: Icons.forum,
      githubUrl: "https://github.com/JosiahThobejane/what24",
    ),
    const ProjectModel(
      title: "Lebone",
      description:
          "A community-funded electricity relief platform — connects verified South "
          "Africans who need help paying for electricity with donors, pooling funds "
          "that get distributed automatically as they come in.",
      tags: ["Flutter", "GetX", "Firebase", "Firestore"],
      color: Color.fromRGBO(230, 150, 20, 1),
      icon: Icons.bolt,
    ),
    const ProjectModel(
      title: "Covid 19 App (2020)",
      description:
          "Easily get real-time stats updates on Coronavirus cases in South Africa.",
      tags: ["Flutter", "Dart", "Firebase", "Cloud Functions", "Notifications"],
      color: Color.fromRGBO(195, 195, 195, 1),
      imageNetworkUrl: "https://covid19-app.co.za/assets/images/potrait.png",
      viewUrl: "http://covid19-app.co.za",
    ),
  ];

  final List<ProjectModel> learnerProjects = [
    const ProjectModel(
      title: "Josionary",
      description:
          "A dictionary application built in Java and MySQL using the JDBC library. "
          "All words, along with their descriptions, are stored in a database.",
      tags: ["Java 8", "MySQL", "JDBC"],
      color: Color.fromRGBO(20, 28, 59, 1),
      imageAsset: "assets/img/josionary.PNG",
      githubUrl: "https://github.com/JosiahThobejane/Java-MySQL-Dictionary",
    ),
    const ProjectModel(
      title: "JosIP",
      description:
          "A web app that displays a user's IP address and country, made in Java "
          "using the GSON library and the ipify.org GeoLocation API.",
      tags: ["Java EE", "Maven", "JSON"],
      color: Color.fromRGBO(20, 28, 59, 1),
      imageAsset: "assets/img/josip.PNG",
      githubUrl: "https://github.com/JosiahThobejane/JosIP",
      viewUrl: "https://josiahip.herokuapp.com/worker",
    ),
    const ProjectModel(
      title: "JosTweet",
      description:
          "This application allows you to Tweet using your voice... from the "
          "command line.",
      tags: ["Java 8", "Google Speech-To-Text API", "Twitter4j"],
      color: Color.fromRGBO(20, 28, 59, 1),
      imageAsset: "assets/img/joslive thumbnail.PNG",
      githubUrl: "https://github.com/JosiahThobejane/JosVoiceTweet",
    ),
  ];
}
