import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_space/Helpers/AppConstant/AppConstant.dart';
import 'package:my_space/Widgets/custom_menu_widget.dart';
import 'package:my_space/Widgets/logo_widget.dart';
import 'package:my_space/bloc/theme_bloc/theme_bloc.dart';

class CustomDrawerWidget extends StatefulWidget {
  const CustomDrawerWidget({super.key});

  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
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
                  icon: Icons.home_filled,
                  menuText: "Home",
                  function: () {
                    context.pop();
                    AppConstant.observerScollController.animateTo(
                        index: 0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  }),
              CustomMenuWidget(
                  icon: Icons.person_2_outlined,
                  menuText: "About",
                  function: () {
                    context.pop();
                    AppConstant.observerScollController.animateTo(
                        index: 3,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  }),
              CustomMenuWidget(
                  icon: Icons.code_outlined,
                  menuText: "Projects",
                  function: () {
                    context.pop();
                    AppConstant.observerScollController.animateTo(
                        index: 4,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  }),
              CustomMenuWidget(
                  icon: Icons.build_sharp,
                  menuText: "Service",
                  function: () {
                    context.pop();
                    AppConstant.observerScollController.animateTo(
                        index: 5,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  }),
              CustomMenuWidget(
                  icon: Icons.contact_page_sharp,
                  menuText: "Contact",
                  function: () {
                    context.pop();
                    AppConstant.observerScollController.animateTo(
                        index: 2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  }),
            ],
          ),
        );
      },
    );
  }
}
