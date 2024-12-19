import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Gradient contGradient = LinearGradient(
    colors: [
      Color(0xff686F81),
      Color(0xff686F81),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static Gradient contView2 = LinearGradient(
    colors: [
      Color(0xff000000),
      Color(0xff000000),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static Color blueAccent = Color(0xff0174CC);
  static Color secondaryColor = Color(0xff5A5A5A);
  static Color textcolor = Color(0xff222222);
  static Color contcolor = Color(0xffF2F3F5);
  static Color blackboldcolor = Color(0xff1C1C1C);
  static Color dottedbordercolor = Color(0xffEDF5FA);
}
