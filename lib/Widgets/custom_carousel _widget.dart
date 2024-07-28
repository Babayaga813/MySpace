import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'custom_card_widget.dart';

class CustomCarouselWidget extends StatelessWidget {
  final double aspectRatio;
  final String titleText;
  final String subTitleText;
  final bool needImageTitle;
  final List<String>? imageTitles;
  final List<String> imagePaths;
  final List<String> descriptions;
  const CustomCarouselWidget(
      {super.key,
      required this.titleText,
      required this.subTitleText,
      required this.imagePaths,
      required this.descriptions,
      required this.needImageTitle,
      this.imageTitles,
      required this.aspectRatio});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            titleText,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
          ),
          Text(
            subTitleText,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          CarouselSlider.builder(
              itemCount: imagePaths.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return CustomCardWidget(
                  imagePath: imagePaths[itemIndex],
                  service: descriptions[itemIndex],
                  needImageTitle: needImageTitle,
                  imageTitle: '',
                );
              },
              options: CarouselOptions(
                  aspectRatio: aspectRatio,
                  viewportFraction: 0.65,
                  reverse: true,
                  autoPlay: true,
                  enlargeCenterPage: true))
        ],
      ),
    );
  }
}
