import 'package:flutter/material.dart';
import 'package:my_space/Widgets/side_title_widget.dart';
import 'custom_project_card_widget.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SideTitleWidget(
          title: "Projects",
          subTitle: "Here are my few previous and ongoing work",
          needSubTitle: true,
          topSpacing: 32,
          bottomSpacing: 32,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _projectImages.length,
          itemBuilder: (context, index) {
            return CustomProjectCardWidget(
                projectImage: _projectImages[index],
                projectName: _projectNames[index],
                projectDetail: _projectDetails[index]);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
        )
      ],
    );
  }
}

List<String> _projectImages = [
  "assets/images/music.png",
  "assets/images/cab.png",
  "assets/images/sports.png",
  "assets/images/folio.png",
  "assets/images/debug.png",
  "assets/images/booking.png",
  "assets/images/vr.png",
  "assets/images/ar.png",
];

List<String> _projectNames = [
  "Music Application",
  "Cab booking Application",
  "Sports betting Application",
  "My Space",
  "Code Buddy",
  "Booking Application",
  "Networks and Cloud",
  "Field Surveyer",
];

List<String> _projectDetails = [
  "A music app that lets you crop favorite sections of songs and curate playlists. Built with the native Spotify SDK for Android and iOS, it uses method and event channels for a seamless music experience.",
  "A cab booking app that manages pick-up and drop-off details, provides full control over booking data, and sends a 5-minute pre-ride notification.",
  "A betting app similar to My Fantasy, allowing league creation, team formation, player selection, and real-time bet tracking with exciting rewards.",
  "A portfolio app showcasing projects, work experience, expertise, and services. Features a modern UI, contact details, and social media integration.",
  "An error solver app using Google’s ML text extraction and Gemini for solutions and suggestions, offering accurate fixes through advanced machine learning.",
  "A responsive app similar to Book My Show for event ticket booking, providing real-time updates, an intuitive interface, and cross-platform compatibility.",
  "An interactive learning app for exploring network types and virtual data centers, featuring immersive simulations, tutorials, and real-world scenarios.",
  "A field surveying app for placing pipes, calculating usage, and generating detailed bills with inventory integration and PDF export capabilities."
];
