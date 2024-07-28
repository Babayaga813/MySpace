part of 'theme_bloc.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {
  final ThemeMode theme = ThemeMode.light;
}

final class DarkLightTheme extends ThemeState {
  final ThemeMode theme;
  final String logoData;
  DarkLightTheme({required this.logoData, required this.theme});
}

final class DarkTheme extends ThemeState {
  final ThemeMode theme;
  DarkTheme({required this.theme});
}

final class LightTheme extends ThemeState {
  final ThemeMode theme;
  LightTheme({required this.theme});
}
