import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_space/bloc/theme_bloc/theme_bloc.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc, ThemeMode>(
      listener: (context, state) {},
      builder: (context, state) {
        return Image.asset(
          "assets/images/dheenul_dark.png",
          height: 50,
          color: state == ThemeMode.dark ? Colors.white : Colors.black,
        );
      },
    );
  }
}
