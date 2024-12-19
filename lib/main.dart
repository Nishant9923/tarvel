import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/views/homescreen/home.dart';
import 'package:travel/views/homescreen/home_scree.dart';
import 'package:travel/views/language_screen.dart';
import 'package:travel/views/login_screen.dart';
import 'package:travel/views/onbording_screen.dart';
import 'package:travel/views/otp_screen.dart';
import 'package:travel/views/splash_screen.dart';

enum Routes {
  SplashScreen,
  OnbordingScreen,
  LoginScreen,
  otpscreen,
  LanguageScreen,
  home,
}

void main() {
  runApp(Travel());
}

class Travel extends StatelessWidget {
  Travel({super.key});

  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      name: Routes.SplashScreen.name,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: "/onbording",
      name: Routes.OnbordingScreen.name,
      builder: (context, state) => OnbordingScreen(),
    ),
    GoRoute(
      path: "/LoginScreen",
      name: Routes.LoginScreen.name,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: "/otpscreen",
      name: Routes.otpscreen.name,
      builder: (context, state) => OtpScreen(),
    ),
    GoRoute(
      path: "/languagescreen",
      name: Routes.LanguageScreen.name,
      builder: (context, state) => LanguageScreen(),
    ),
    GoRoute(
      path: "/home",
      name: Routes.home.name,
      builder: (context, state) => Home(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
