import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_space/Helpers/Styles/style.dart';

class RoleWidget extends StatelessWidget {
  const RoleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.play_arrow_rounded,
                color: CustomColors.blueColor,
              ),
              AnimatedTextKit(repeatForever: true, animatedTexts: [
                TyperAnimatedText(
                  "Flutter Developer",
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  speed: const Duration(milliseconds: 50),
                ),
                TyperAnimatedText(
                  "Beginner in cloud (AWS)",
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  speed: const Duration(milliseconds: 50),
                ),
                TyperAnimatedText(
                  "Cyber security",
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  speed: const Duration(milliseconds: 50),
                ),
              ])
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
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
  "A music app that lets you crop favorite song sections and curate playlists. Built with the native Spotify SDK for Android and iOS, it uses method and event channels for a seamless music experience. Enjoy personalized playlists and uninterrupted listening.",
  "A cab booking app that manages pick-up and drop-off details, gives full control over booking data, and sends a 5-minute pre-ride notification. It ensures a smooth booking process with real-time updates and reminders.",
  "A betting app similar to My Fantasy, allowing league creation, team formation, player selection, and real-time bet tracking with exciting rewards. Compete with others and track your performance effortlessly.",
  "A portfolio app showcasing projects, work experience, expertise, and services. Features a modern UI, contact details, and social media integration. It serves as a comprehensive introduction to your professional profile.",
  "An error solver app using Google’s ML text extraction and Gemini for solutions and suggestions, providing accurate fixes through advanced machine learning. It enhances troubleshooting with intelligent recommendations.",
  "A responsive app similar to Book My Show for event ticket booking, offering real-time updates, an intuitive interface, and cross-platform compatibility. It simplifies the booking process and enhances user experience.",
  " An interactive learning app for exploring network types and virtual data centers, featuring immersive simulations, tutorials, and real-world scenarios. It provides a hands-on approach to understanding complex concepts.",
  "A surveying app for placing pipes, calculating usage, and generating detailed bills with inventory integration and PDF export capabilities. It streamlines the surveying process with accurate measurements and efficient billing."
];
