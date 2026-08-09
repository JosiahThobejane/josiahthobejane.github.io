import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/repo/project.dart';
import 'package:website/view/widgets/project_card.dart';

class DesktopPortfolio extends StatelessWidget {
  DesktopPortfolio({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MY PORTFOLIO',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 42,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(20, 28, 59, 1),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'A running list of what I\'m actively building — mostly Flutter apps,\n'
              'a couple of web tools, and AI agent tooling.',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.titleMedium,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 32),
            for (final project in projectRepo.featuredProjects)
              ProjectCard(project: project),
            const SizedBox(height: 16),
            Text(
              'Learner Projects',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(20, 28, 59, 1),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Projects I did while still figuring out what I liked about software.',
              style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.titleMedium,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24),
            for (final project in projectRepo.learnerProjects)
              ProjectCard(project: project),
          ],
        ),
      ),
    );
  }
}
