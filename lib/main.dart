import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/views/onbording_screen.dart';
import 'package:travel/views/splash_screen.dart';

enum Routes { SplashScreen, OnbordingScreen }

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
  ]);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(393, 852),
        child: MaterialApp.router(
          routerConfig: router,
        ));
  }
}
