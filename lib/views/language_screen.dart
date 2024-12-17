import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/colorpallet.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final List<String> languages = [
    'English',
    'Hindi',
    'Arabic',
    'Telugu',
    'Malayalam',
    'Chinese',
    'Japanese',
  ];

  int selectedtabindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 75.h,
            ),
            Text(
              "Choose Language",
              style: TextStyle(
                fontFamily: Typo.ManropeBold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Wrap(
              spacing: 15,
              runSpacing: 23,
              children: List.generate(
                languages.length,
                (index) => GestureDetector(
                  onTap: () {
                    selectedtabindex = index;
                    setState(() {
                      Future.delayed(
                        Duration(seconds: 1),
                        () {
                          GoRouter.of(context).goNamed(Routes.LoginScreen.name);
                        },
                      );
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: index == selectedtabindex
                                ? Colors.blue
                                : Colors.grey)),
                    child: Text(
                      style: TextStyle(
                          fontFamily: Typo.ManropeMedium,
                          fontSize: 16.sp,
                          color: index == selectedtabindex
                              ? Colors.blue
                              : Colors.grey),
                      languages[index],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
