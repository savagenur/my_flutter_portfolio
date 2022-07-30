import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  final String readMoreUrl;
  const ProjectCard({
    Key? key,
    required this.project, required this.readMoreUrl,
  }) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: EdgeInsets.all(
        defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context)
                ? 3
                : Responsive.isTablet(context)
                    ? 3
                    : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
              onPressed: () async {
                String url = readMoreUrl;
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(
                    Uri.parse(url),
                  );
                }
              },
              child: Text("Read More>>"))
        ],
      ),
    );
  }
}
