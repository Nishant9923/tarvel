import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:travel/consts/colorpallet.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 139.h,
            ),
            Text(
              "OTP Verification",
              style: TextStyle(
                fontFamily: Typo.ManropeBold,
                color: AppColors.textcolor,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              "Enter the verification code we just sent on your email address.",
              style: TextStyle(
                fontFamily: Typo.ManropeBold,
                color: AppColors.secondaryColor,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              defaultPinTheme: PinTheme(
                textStyle: TextStyle(color: Colors.black),
                height: 60.h,
                width: 69.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                ),
              ),
              submittedPinTheme: PinTheme(
                textStyle: TextStyle(color: Colors.black),
                height: 60.h,
                width: 69.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.green),
                ),
              ),
              length: 4,
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 321),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(
                        fontFamily: Typo.ManropeRegular,
                        color: AppColors.textcolor,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
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
                  GoRouter.of(context).goNamed(Routes.home.name);
                },
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontFamily: Typo.ManropeRegular,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
