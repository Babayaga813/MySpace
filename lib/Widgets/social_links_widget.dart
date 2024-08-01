import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_space/Helpers/Styles/style.dart';
import 'package:my_space/bloc/theme_bloc/theme_bloc.dart';

import '../bloc/phone_mail_service_bloc/phone_mail_service_bloc.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc, ThemeMode>(
      listener: (context, state) {},
      builder: (context, state) {
        return Wrap(
          children: [
            IconButton(
                onPressed: () {
                  context.read<PhoneMailServiceBloc>().add(LaunchService(
                      scheme: "https",
                      data: "//www.linkedin.com/in/dheenul-a-6b6878201/"));
                },
                icon: Image.asset(
                  'assets/images/linkedin.png',
                  height: 40,
                  color: state == ThemeMode.dark
                      ? CustomColors.iconLightColor
                      : CustomColors.socialIconDarkColor,
                )),
            IconButton(
                onPressed: () {
                  context.read<PhoneMailServiceBloc>().add(LaunchService(
                      scheme: "https", data: "//github.com/Babayaga813"));
                },
                icon: Image.asset(
                  "assets/images/github.png",
                  height: 43,
                  color: state == ThemeMode.dark
                      ? CustomColors.iconLightColor
                      : CustomColors.socialIconDarkColor,
                )),
            IconButton(
                onPressed: () {
                  context.read<PhoneMailServiceBloc>().add(LaunchService(
                      scheme: "mailto", data: "dheenul813@gmail.com"));
                },
                icon: Image.asset(
                  'assets/images/email.png',
                  height: 40,
                  color: state == ThemeMode.dark
                      ? CustomColors.iconLightColor
                      : CustomColors.socialIconDarkColor,
                )),
            IconButton(
                onPressed: () {
                  context
                      .read<PhoneMailServiceBloc>()
                      .add(LaunchService(scheme: "tel", data: "+919790306585"));
                },
                icon: Image.asset(
                  'assets/images/phone.png',
                  height: 40,
                  color: state == ThemeMode.dark
                      ? CustomColors.iconLightColor
                      : CustomColors.socialIconDarkColor,
                )),
            Chip(
              color: const WidgetStatePropertyAll(
                  CustomColors.socialIconDarkColor),
              label: Text(
                "Resume",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.socialIconLightColor),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),

            // IconButton(
            //     onPressed: () {},
            //     icon: Image.asset(
            //       'assets/images/resume.png',
            //       height: 40,
            //       color: state == ThemeMode.dark
            //           ? CustomColors.iconLightColor
            //           : CustomColors.socialIconDarkColor,
            //     )),
          ],
        );
      },
    );
  }
}
