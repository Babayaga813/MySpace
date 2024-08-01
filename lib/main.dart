import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:my_space/Services/url_launcher_service.dart';
import 'package:my_space/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  registerService();

  runApp(const MyApp());
}

void registerService() {
  GetIt.instance.registerSingleton<UrlLauncherService>(UrlLauncherService());
}
