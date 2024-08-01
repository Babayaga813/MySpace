// This widget is the root of your application.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_space/Helpers/Navigation/app_routes.dart';
import 'package:my_space/Helpers/Styles/style.dart';
import 'package:my_space/bloc/phone_mail_service_bloc/phone_mail_service_bloc.dart';
import 'package:my_space/bloc/theme_bloc/theme_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(448, 973),
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(
                create: (context) => ThemeBloc(),
              ),
              BlocProvider<PhoneMailServiceBloc>(
                  create: (context) => PhoneMailServiceBloc())
            ],
            child: BlocBuilder<ThemeBloc, ThemeMode>(
              builder: (context, state) {
                return MaterialApp.router(
                  title: 'Dheenul Folio',
                  routerConfig: Approutes().routes,
                  debugShowCheckedModeBanner: false,
                  theme: CustomThemes.lightMode,
                  darkTheme: CustomThemes.darkMode,
                  themeMode: state,
                );
              },
            ),
          );
        });
  }
}
