import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  changescreen(context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
        GoRouter.of(context).goNamed(Routes.OnbordingScreen.name);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    changescreen(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(
                  Assetsurl.igtripacelogo,
                  height: 58,
                ),
                Positioned(
                  left: 37.h,
                  bottom: 35.w,
                  child: Image.asset(
                    Assetsurl.icearth,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 45.h,
            ),
            Image.asset(
              Assetsurl.icmap,
              height: 337.h,
              width: 345.w,
            ),
          ],
        ),
      ),
    );
  }
}
