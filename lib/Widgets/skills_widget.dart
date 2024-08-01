import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_space/Widgets/side_title_widget.dart';

import '../Helpers/Navigation/app_routes_constants.dart';
import '../Helpers/Styles/Style.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const SideTitleWidget(
          topSpacing: 0,
          title: "My Expertise",
          subTitle: "Technologies I have worked with",
          needSubTitle: true,
          bottomSpacing: 20,
        ),
        Wrap(
          spacing: 12,
          children: [
            Chip(
              label: const Text(
                "Flutter",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Dart",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Firebase",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("BloC",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("MobX",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Store Listing",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("GitHub",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("MVVM",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Unity",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("C#",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text(
                "API",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Blender",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Made in "),
            Icon(
              Icons.favorite,
              color: CustomColors.blueColor,
              size: 18,
            ),
            Text(
              " with Flutter",
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
