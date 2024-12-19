import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/colorpallet.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';
import 'package:travel/views/homescreen/ai_planner.dart';
import 'package:travel/views/homescreen/explore_screen.dart';
import 'package:travel/views/homescreen/home_scree.dart';
import 'package:travel/views/homescreen/newsblogs_screen.dart';

class AppbarComponents {
  String? text;
  String? icon;

  AppbarComponents({this.text, this.icon});
}

List<AppbarComponents> bottomNavigationBar = [
  AppbarComponents(icon: Assetsurl.ichome, text: "Home"),
  AppbarComponents(icon: Assetsurl.icexplore, text: "Explore"),
  AppbarComponents(icon: Assetsurl.icaiplaner, text: "AI Planner"),
  AppbarComponents(icon: Assetsurl.icblogs, text: "News & Blogs"),
];

List screens = [
  HomeScreen(),
  ExploreScreen(),
  AiPlanner(),
  NewsblogsScreen(),
];
int selectedBottomBarIndex = 0;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedBottomBarIndex],
      bottomNavigationBar: Container(
        height: 75.h,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 4,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.25),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(14.r),
            topLeft: Radius.circular(14.r),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                4,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedBottomBarIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          height: 24.h,
                          bottomNavigationBar[index].icon!,
                          color: selectedBottomBarIndex == index
                              ? Colors.blue
                              : Colors.black,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          bottomNavigationBar[index].text!,
                          style: TextStyle(
                            fontFamily: Typo.ManropeRegular,
                            fontSize: 10.sp,
                            color: AppColors.secondaryColor,
                          ),
                        )
                      ],
                    ),
                  );
                },
              )),
        ),
      ),
    );
  }
}
