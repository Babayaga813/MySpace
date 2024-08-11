import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_space/Helpers/AppConstant/AppConstant.dart';
import 'package:my_space/Helpers/Styles/style.dart';
import 'package:my_space/Widgets/aubot_widget.dart';
import 'package:my_space/Widgets/custom_drawer_widget.dart';
import 'package:my_space/Widgets/logo_widget.dart';
import 'package:my_space/Widgets/name_widget.dart';
import 'package:my_space/Widgets/projects_widget.dart';
import 'package:my_space/Widgets/role_widget.dart';
import 'package:my_space/Widgets/services_widget.dart';
import 'package:my_space/Widgets/side_title_widget.dart';
import 'package:my_space/Widgets/skills_widget.dart';
import 'package:my_space/Widgets/social_links_widget.dart';
import 'package:scrollview_observer/scrollview_observer.dart';
import '../../bloc/theme_bloc/theme_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final ScrollController _scrollController = ScrollController();
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
      body: ListViewObserver(
        controller: AppConstant.observerScollController,
        child: ListView(
          controller: AppConstant.scrollController,
          shrinkWrap: true,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            NameWidget(),
            RoleWidget(),
            SocialLinksWidget(),
            AboutWidget(),
            ProjectsWidget(),
            ServicesWidget(),
            SkillsWidget(),
          ],
        ),
      ),
    );
  }
}
