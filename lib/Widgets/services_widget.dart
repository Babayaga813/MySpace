import 'package:flutter/material.dart';
import 'package:my_space/Widgets/custom_carousel%20_widget.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCarouselWidget(
        aspectRatio: 16 / 9,
        titleText: "What I can do?",
        subTitleText: "I may not be perfect, but my skills make a difference.",
        needImageTitle: false,
        imagePaths: _serviceImages,
        descriptions: _serviceName);
  }
}

List<String> _serviceImages = [
  "assets/images/flutter.png",
  "assets/images/unity.png",
  "assets/images/aws.png",
  "assets/images/store.png",
  "assets/images/opensource.png",
];
List<String> _serviceName = [
  "Cross-platform Mobile Application Developemnt using flutter",
  "VR and AR Development using Unity",
  "Cloud Management and development",
  "App Store and Play Store listing",
  "Open Source Contribution",
];
