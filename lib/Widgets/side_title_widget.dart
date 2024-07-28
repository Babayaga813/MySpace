import 'package:flutter/material.dart';

import '../Helpers/Styles/style.dart';

class SideTitleWidget extends StatelessWidget {
  final text;
  const SideTitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: CustomColors.blueColor,
          fontWeight: FontWeight.w500,
          fontSize: 16),
    );
  }
}
