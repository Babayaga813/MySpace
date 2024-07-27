import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_space/Widgets/customDrawerWidget.dart';
import 'package:my_space/Widgets/roleWidget.dart';
import 'package:my_space/Widgets/socialLinksWidget.dart';

import '../../bloc/theme_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: BlocProvider(
            create: (context) => ThemeBloc(),
            child: BlocBuilder<ThemeBloc, ThemeMode>(
              builder: (context, state) {
                return state == ThemeMode.light
                    ? Image.asset(
                        "assets/images/dheenul_dark.png",
                        height: 50,
                      )
                    : Image.asset(
                        "assets/images/dheenul_light.png",
                        height: 50,
                      );
              },
            ),
          ),
          actions: [
            Column(
              children: [
                Switch(
                    inactiveThumbImage:
                        const AssetImage("assets/images/sun.png"),
                    activeThumbImage:
                        const AssetImage("assets/images/moon.png"),
                    // activeColor: const Color.fromARGB(255, 141, 166, 205),
                    // inactiveTrackColor: const Color(0xffF8F8F8),
                    value: context.read<ThemeBloc>().state == ThemeMode.dark,
                    onChanged: (value) {
                      context.read<ThemeBloc>().add(ChangeThemeEvent(value));
                    }),
              ],
            ),
          ],
        ),
        drawer: const CustomDrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "HEY THERE! ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Image.asset(
                    "assets/gifs/hi.gif",
                    height: 30,
                  )
                ],
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
              const RoleWidget(),
              const SocialLinksWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
