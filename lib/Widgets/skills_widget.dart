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
      children: [
        const SideTitleWidget(text: "Technologies I have worked with"),
        const Divider(),
        Wrap(
          spacing: 5,
          children: [
            Chip(
              label: const Text("Flutter"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Dart"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Firebase"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("BloC"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("MobX"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Store Listing"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("GitHub"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("MVVM"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("Unity"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("C#"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            Chip(
              label: const Text("API"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
          ],
        ),
        Row(
          children: [
            const Text("To know more"),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRouteConstants.resumeRoute);
                },
                child: const Text(
                  "Resume",
                  style: TextStyle(
                      color: CustomColors.blueColor,
                      decoration: TextDecoration.underline,
                      decorationColor: CustomColors.blueColor),
                )),
          ],
        ),
      ],
    );
  }
}
