import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Helpers/Styles/style.dart';
import '../bloc/theme_bloc/theme_bloc.dart';

class CustomProjectCardWidget extends StatelessWidget {
  final String projectImage;
  final String projectName;
  final String projectDetail;
  const CustomProjectCardWidget(
      {super.key,
      required this.projectImage,
      required this.projectName,
      required this.projectDetail});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc, ThemeMode>(
      listener: (context, state) {},
      builder: (context, state) {
        return Card.filled(
          elevation: 3,
          shadowColor: CustomColors.iconDarkColor,
          color: state == ThemeMode.light
              ? CustomColors.iconLightColor
              : CustomColors.cardDarkColor,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 15, top: 24, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  projectImage,
                  height: 36,
                  color: state == ThemeMode.light
                      ? CustomColors.iconDarkColor
                      : CustomColors.iconLightColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  projectName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: 350),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          projectDetail,
                        )))
              ],
            ),
          ),
        );
      },
    );
  }
}
