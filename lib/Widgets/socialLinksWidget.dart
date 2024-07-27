import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_space/Helpers/Styles/Style.dart';
import 'package:my_space/bloc/theme_bloc.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc, ThemeMode>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/linkedin.png',
                  height: 40,
                  color: state == ThemeMode.dark
                      ? CustomColors.iconLightColor
                      : CustomColors.iconDarkColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/github.png",
                  height: 43,
                  color: state == ThemeMode.dark
                      ? CustomColors.iconLightColor
                      : CustomColors.iconDarkColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/twitter.png',
                  height: 40,
                  color: state == ThemeMode.dark
                      ? CustomColors.iconLightColor
                      : CustomColors.iconDarkColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/instagram.png',
                  height: 40,
                  color: state == ThemeMode.dark
                      ? CustomColors.iconLightColor
                      : CustomColors.iconDarkColor,
                )),
          ],
        );
      },
    );
  }
}
