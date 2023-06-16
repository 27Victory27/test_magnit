import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_magnit/main/bloc/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.light());

  void setDarkTheme() {
    emit(const ThemeState.dark());
  }

  void setLightTheme() {
    emit(const ThemeState.light());
  }

}
