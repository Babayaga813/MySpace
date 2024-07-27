import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.light) {
    on<ChangeThemeEvent>((event, emit) {
      // if (event.isDark) {
      //   emit(DarkLightTheme(theme: ThemeMode.dark));
      // } else {
      //   emit(DarkLightTheme(theme: ThemeMode.light));
      // }
      emit(event.isDark ? ThemeMode.dark : ThemeMode.light);
    });
  }
}
