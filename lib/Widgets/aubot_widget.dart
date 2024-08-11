import 'package:flutter/material.dart';

import 'side_title_widget.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SideTitleWidget(
          title: "About Me",
          subTitle: "Who am I ?",
          needSubTitle: true,
          topSpacing: 20,
          bottomSpacing: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
              "I am a Mobile Application Developer with 1.7 years of overall experience, including 1.5 years focused on cross-platform app development using Flutter at AVASOFT Inc. In this role, I have successfully managed and collaborated with teams to deploy apps on both the App Store and Play Store. Additionally, I have expertise in VR and AR app development, having successfully developed two applications in this domain."),
        ),
      ],
    );
  }
}
