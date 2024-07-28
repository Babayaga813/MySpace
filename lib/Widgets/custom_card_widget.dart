import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_space/Helpers/Styles/Style.dart';
import 'package:my_space/bloc/theme_bloc/theme_bloc.dart';

class CustomCardWidget extends StatelessWidget {
  final String imagePath;
  final String service;
  final bool needImageTitle;
  final String? imageTitle;
  const CustomCardWidget(
      {super.key,
      required this.imagePath,
      required this.service,
      required this.needImageTitle,
      this.imageTitle});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc, ThemeMode>(
      listener: (context, state) {},
      builder: (context, state) {
        return Card.filled(
          elevation: 10,
          shadowColor: CustomColors.iconDarkColor,
          color: state == ThemeMode.light
              ? CustomColors.iconLightColor
              : CustomColors.cardDarkColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  imagePath,
                  height: 80,
                  color: state == ThemeMode.light
                      ? CustomColors.iconDarkColor
                      : CustomColors.iconLightColor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              needImageTitle
                  ? Text(
                      imageTitle ?? "",
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    )
                  : const SizedBox.shrink(),
              needImageTitle
                  ? const SizedBox(
                      height: 30,
                    )
                  : const SizedBox.shrink(),
              SizedBox(
                  width: 250,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          service,
                          textAlign: TextAlign.center,
                        ),
                      )))
            ],
          ),
        );
      },
    );
  }
}
