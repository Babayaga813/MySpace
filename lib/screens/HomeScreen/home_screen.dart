import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_space/Helpers/Styles/style.dart';
import 'package:my_space/Widgets/contact_widget.dart';
import 'package:my_space/Widgets/custom_drawer_widget.dart';
import 'package:my_space/Widgets/custom_project_card_widget.dart';
import 'package:my_space/Widgets/logo_widget.dart';
import 'package:my_space/Widgets/projects_widget.dart';
import 'package:my_space/Widgets/role_widget.dart';
import 'package:my_space/Widgets/services_widget.dart';
import 'package:my_space/Widgets/side_title_widget.dart';
import 'package:my_space/Widgets/skills_widget.dart';
import 'package:my_space/Widgets/social_links_widget.dart';
import '../../bloc/theme_bloc/theme_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const LogoWidget(),
        centerTitle: true,
        actions: [
          Switch(
              inactiveThumbImage: const AssetImage("assets/images/sun.png"),
              activeThumbImage: const AssetImage("assets/images/moon.png"),
              activeColor: CustomColors.switchActiveColor,
              // activeColor: CustomColors.blueColor,
              // inactiveTrackColor: const Color(0xffF8F8F8),
              value: context.read<ThemeBloc>().state == ThemeMode.dark,
              onChanged: (value) {
                context.read<ThemeBloc>().add(ChangeThemeEvent(value));
              }),
        ],
      ),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Text(
                      "HEY THERE! ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Image.asset(
                    "assets/gifs/hi.gif",
                    height: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Dheenul",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    fontFamily:
                        GoogleFonts.montserrat(fontWeight: FontWeight.w600)
                            .fontFamily),
              ),
              const SizedBox(
                height: 10,
              ),
              const RoleWidget(),
              const SizedBox(
                height: 20,
              ),
              const SocialLinksWidget(),
              const SideTitleWidget(
                title: "About Me",
                subTitle: "Who am I ?",
                needSubTitle: true,
                topSpacing: 20,
                bottomSpacing: 10,
              ),
              const Text(
                  "I am a Mobile Application Developer with 1.7 years of overall experience, including 1.5 years focused on cross-platform app development using Flutter at AVASOFT Inc. In this role, I have successfully managed and collaborated with teams to deploy apps on both the App Store and Play Store. Additionally, I have expertise in VR and AR app development, having successfully developed two applications in this domain."),
              const ProjectsWidget(),
              const ServicesWidget(),
              const SkillsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
