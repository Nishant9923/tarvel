import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/colorpallet.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 86.h),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back! Login\nto Your Account..",
                    style: TextStyle(
                        fontFamily: Typo.ManropeRegular,
                        color: Colors.black,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: Typo.ManropeRegular,
                      ),
                      prefix: SvgPicture.asset(
                        Assetsurl.icindia,
                      ),
                      hintText: "+91    Enter your mobile number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        GoRouter.of(context).goNamed(Routes.otpscreen.name);
                      },
                      child: Text(
                        "Send OTP",
                        style: TextStyle(
                            fontFamily: Typo.ManropeRegular,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Divider(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Or Login with",
                        style: TextStyle(
                            fontFamily: Typo.ManropeRegular,
                            color: AppColors.secondaryColor,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            Assetsurl.icfb,
                            height: 30.h,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 56.h,
                        width: 105.w,
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            Assetsurl.icgoogle,
                            height: 30.h,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 56.h,
                        width: 105.w,
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            Assetsurl.icapple,
                            height: 30.h,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 56.h,
                        width: 105.w,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
