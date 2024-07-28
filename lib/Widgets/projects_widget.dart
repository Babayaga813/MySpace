import 'package:flutter/material.dart';
import 'package:my_space/Widgets/custom_carousel%20_widget.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCarouselWidget(
        aspectRatio: 12 / 10,
        titleText: "Projects",
        subTitleText: "Here are few samples of me previous and ongoing work",
        imagePaths: _projectImages,
        descriptions: _projectDetails,
        imageTitles: _projectNames,
        needImageTitle: true);
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
  "Simple music application, developed using native spotify SDK. Where you crop your favourite part of your favorite song and listen to it.",
  "A cab booking to manage your pick-up and drop details, alos get notified about your ride.",
  "A betting application like My Fantasy, where different leagues can be created with team and get rewarded with your selected team. ",
  "Personal portfolio app for displaying your project, work experience, tools and fields expertise in and contact details.",
  "Building an Error sover application by integrating google's ml text extraction and gemini to get solutions and suggestions.",
  "Building a higly responsive and adaptive application like Book My show",
  "An highly interactive learning application used to learn about different types of networks, virtual data center to explore and learn about AWS global infrastructure.",
  "Field Surveying app, used to place pipe in real world and calculate the total pipe and joint used and finally generate bill which can be exported as PDF."
];
