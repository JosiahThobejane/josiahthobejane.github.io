import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/repo/project.dart';
import 'package:website/view/widgets/project_card.dart';

class MobilePortfolio extends StatelessWidget {
  MobilePortfolio({Key? key}) : super(key: key);

  final ProjectRepo projectRepo = ProjectRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(20, 28, 59, 1)),
          onPressed: () => Navigator.of(context).canPop()
              ? Navigator.of(context).pop()
              : null,
        ),
        title: Text(
          'Josiah Thobejane',
          style: GoogleFonts.mulish(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: const Color.fromRGBO(20, 28, 59, 1),
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MY PORTFOLIO',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(20, 28, 59, 1),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'What I\'m actively building — mostly Flutter apps, a couple of '
              'web tools, and AI agent tooling.',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.titleMedium,
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24),
            for (final project in projectRepo.featuredProjects)
              ProjectCard(project: project, stacked: true),
            const SizedBox(height: 8),
            Text(
              'Learner Projects',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(20, 28, 59, 1),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Projects I did while still figuring out what I liked about software.',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.titleMedium,
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 16),
            for (final project in projectRepo.learnerProjects)
              ProjectCard(project: project, stacked: true),
          ],
        ),
      ),
    );
  }
}
