import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_space/Helpers/Styles/Style.dart';

class RoleWidget extends StatelessWidget {
  const RoleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.play_arrow_rounded,
          color: CustomColors.iconColor,
        ),
        AnimatedTextKit(repeatForever: true, animatedTexts: [
          TyperAnimatedText(
            "Flutter Developer",
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            speed: const Duration(milliseconds: 50),
          ),
          TyperAnimatedText(
            "Beginner in cloud (AWS)",
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            speed: const Duration(milliseconds: 50),
          ),
          TyperAnimatedText(
            "Cyber security",
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            speed: const Duration(milliseconds: 50),
          ),
        ])
      ],
    );
  }
}
