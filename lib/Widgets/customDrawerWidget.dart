import 'package:flutter/material.dart';
import 'package:my_space/Widgets/customMenuWidget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, bottom: 15),
            child: Image.asset(
              "assets/images/dheenul_dark.png",
              height: 50,
            ),
          ),
          const Divider(),
          CustomMenuWidget(
              icon: Icons.home_outlined, menuText: "Home", function: () {}),
          CustomMenuWidget(
              icon: Icons.person_2_outlined,
              menuText: "About",
              function: () {}),
          CustomMenuWidget(
              icon: Icons.build_circle_outlined,
              menuText: "Service",
              function: () {}),
          CustomMenuWidget(
              icon: Icons.code_outlined, menuText: "Projects", function: () {}),
          CustomMenuWidget(
              icon: Icons.work_history_outlined,
              menuText: "Professional Experience",
              function: () {}),
          CustomMenuWidget(
              icon: Icons.contact_page_outlined,
              menuText: "Contact",
              function: () {}),
          CustomMenuWidget(
              icon: Icons.book_outlined, menuText: "Resume", function: () {})
        ],
      ),
    );
  }
}
