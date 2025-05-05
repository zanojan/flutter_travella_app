import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeRiverpod extends StateNotifier<ThemeMode>{
  ThemeRiverpod() : super(ThemeMode.light);


  void toggleTheme() {
    if(state == ThemeMode.light){
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.light;
    }
  }
}

final themeRiverpod = StateNotifierProvider<ThemeRiverpod, ThemeMode>((ref) {
  return ThemeRiverpod();
});