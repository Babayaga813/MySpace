import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_space/Helpers/Navigation/AppRouteConstants.dart';

import '../../Pages/HomeScreen/HomeScreen.dart';

class Approutes {
  GoRouter routes = GoRouter(
    routes: [
      // GoRoute(
      //   name: AppRouteConstants.splashRoute,
      //   path: "/",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: SplashScreen());
      //   },
      // ),
      // GoRoute(
      //   name: AppRouteConstants.captureImageRoute,
      //   path: "/image",
      //   pageBuilder: (context, state) {
      //     return const CupertinoPage(child: CaptureImageScreen());
      //   },
      // ),
      // GoRoute(
      //   name: AppRouteConstants.confirmationRoute,
      //   path: "/confirmation",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: ConfirmationScreen());
      //   },
      // ),
      // GoRoute(
      //   name: AppRouteConstants.errorRoute,
      //   path: "/error",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: ErrorScreen());
      //   },
      // ),
      GoRoute(
        name: AppRouteConstants.homeRoute,
        path: "/",
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
      ),
      // GoRoute(
      //   name: AppRouteConstants.loginRoute,
      //   path: "/login",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: LoginScreen());
      //   },
      // ),
      // GoRoute(
      //   name: AppRouteConstants.profileRoute,
      //   path: "/profile",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: ProfileScreen());
      //   },
      // ),
      // GoRoute(
      //   name: AppRouteConstants.solutionRoute,
      //   path: "/solution",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: SolutionScreen());
      //   },
      // ),
      // GoRoute(
      //   name: AppRouteConstants.techStackRoute,
      //   path: "/stack",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: TechStackScreen());
      //   },
      // ),
    ],
    // errorPageBuilder: (context, state) {
    //   return const MaterialPage(child: ErrorScreen());
    // }
  );
}
