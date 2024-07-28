import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_space/Widgets/custom_menu_widget.dart';
import 'package:my_space/Widgets/logo_widget.dart';
import 'package:my_space/bloc/theme_bloc/theme_bloc.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, state) {
        return Drawer(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 35, bottom: 15),
                child: LogoWidget(),
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
                  icon: Icons.code_outlined,
                  menuText: "Projects",
                  function: () {}),
              CustomMenuWidget(
                  icon: Icons.work_history_outlined,
                  menuText: "Professional Experience",
                  function: () {}),
              CustomMenuWidget(
                  icon: Icons.contact_page_outlined,
                  menuText: "Contact",
                  function: () {}),
              CustomMenuWidget(
                  icon: Icons.book_outlined,
                  menuText: "Resume",
                  function: () {})
            ],
          ),
        );
      },
    );
  }
}
