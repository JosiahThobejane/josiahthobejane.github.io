import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/model/project.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  final bool stacked;

  const ProjectCard({Key? key, required this.project, this.stacked = false})
      : super(key: key);

  Widget _buildVisual() {
    return AspectRatio(
      aspectRatio: stacked ? 16 / 9 : 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: project.imageAsset != null
            ? Image.asset(project.imageAsset!, fit: BoxFit.cover)
            : project.imageNetworkUrl != null
                ? Image.network(project.imageNetworkUrl!, fit: BoxFit.cover)
                : Container(
                    color: project.color,
                    child: Icon(project.icon, color: Colors.white, size: 56),
                  ),
      ),
    );
  }

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final visual = SizedBox(width: stacked ? double.infinity : 160, child: _buildVisual());

    final content = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            style: GoogleFonts.mulish(
              textStyle: Theme.of(context).textTheme.titleLarge,
              fontWeight: FontWeight.w800,
              color: const Color.fromRGBO(20, 28, 59, 1),
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              for (final tag in project.tags)
                Chip(
                  label: Text(
                    tag,
                    style: GoogleFonts.mulish(fontSize: 12, color: Colors.white),
                  ),
                  backgroundColor: const Color.fromRGBO(20, 28, 59, 1),
                  padding: EdgeInsets.zero,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            project.description,
            style: GoogleFonts.mulish(
              textStyle: Theme.of(context).textTheme.bodyMedium,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              if (project.viewUrl != null)
                TextButton.icon(
                  onPressed: () => _launch(project.viewUrl!),
                  icon: const Icon(Icons.visibility, size: 16),
                  label: const Text('View'),
                ),
              if (project.githubUrl != null)
                TextButton.icon(
                  onPressed: () => _launch(project.githubUrl!),
                  icon: const Icon(Icons.code, size: 16),
                  label: const Text('GitHub'),
                ),
            ],
          ),
        ],
      ),
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: stacked
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                visual,
                const SizedBox(height: 16),
                content,
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                visual,
                const SizedBox(width: 16),
                content,
              ],
            ),
    );
  }
}
