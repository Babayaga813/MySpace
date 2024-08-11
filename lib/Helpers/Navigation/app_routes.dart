import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_space/Helpers/Navigation/app_routes_constants.dart';
import 'package:my_space/screens/HomeScreen/resume_screen.dart';
import 'package:my_space/screens/HomeScreen/splash_screen.dart';

import '../../screens/HomeScreen/home_screen.dart';

class Approutes {
  GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        name: AppRouteConstants.splashRoute,
        path: "/",
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        },
      ),
      GoRoute(
        name: AppRouteConstants.homeRoute,
        path: "/home",
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
      ),
      GoRoute(
        name: AppRouteConstants.resumeRoute,
        path: "/resume",
        pageBuilder: (context, state) {
          return const MaterialPage(child: ResumeScreen());
        },
      ),
    ],
  );
}
