import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_space/Helpers/Navigation/app_routes_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      GoRouter.of(context).pushReplacementNamed(AppRouteConstants.homeRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
          TypewriterAnimatedText("Hey There!!",
              speed: Duration(milliseconds: 60),
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: GoogleFonts.dancingScript().fontFamily))
        ]),
      ),
    );
  }
}
