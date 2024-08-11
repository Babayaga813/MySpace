import 'package:flutter/material.dart';

import '../Helpers/Styles/style.dart';

class SideTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool needSubTitle;
  final double bottomSpacing;
  final double topSpacing;
  const SideTitleWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.needSubTitle,
      required this.bottomSpacing,
      required this.topSpacing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: topSpacing,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
          ),
          needSubTitle
              ? const SizedBox(
                  height: 8,
                )
              : const SizedBox.shrink(),
          needSubTitle
              ? Text(
                  subTitle,
                  style: const TextStyle(
                      color: CustomColors.blueColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )
              : const SizedBox.shrink(),
          SizedBox(
            height: bottomSpacing,
          ),
        ],
      ),
    );
  }
}
