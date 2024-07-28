import 'package:flutter/material.dart';
import 'package:my_space/Helpers/Styles/style.dart';

class CustomMenuWidget extends StatelessWidget {
  final IconData icon;
  final String menuText;
  final VoidCallback function;
  const CustomMenuWidget(
      {super.key,
      required this.icon,
      required this.menuText,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: function,
      leading: Icon(
        icon,
        color: CustomColors.blueColor,
      ),
      title: Text(
        menuText,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
