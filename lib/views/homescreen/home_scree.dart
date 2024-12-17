import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/colorpallet.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 64.h,
              ),
              Row(
                children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(
                        fontFamily: Typo.RobotoRegular,
                        fontSize: 14,
                        color: AppColors.textcolor),
                  ),
                  Text(
                    "Satya!",
                    style: TextStyle(
                        fontFamily: Typo.RobotoRegular,
                        fontSize: 18,
                        color: AppColors.textcolor),
                  ),
                  SizedBox(
                    width: 146.w,
                  ),
                  SvgPicture.asset(
                    Assetsurl.icindia,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "INR",
                    style: TextStyle(
                      fontFamily: Typo.ManropeSemiBold,
                      fontSize: 14,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 28.w,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: AppColors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              TextField(
                decoration: InputDecoration(
                  suffix: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "Search here...",
                  hintStyle: TextStyle(
                    fontFamily: Typo.ManropeRegular,
                    fontSize: 12.sp,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contView1(name: "Flight", icon: Assetsurl.icflight1),
                  contView1(name: "Hotels", icon: Assetsurl.ichotel),
                  contView1(name: "Packages", icon: Assetsurl.icpacages),
                ],
              ),
              SizedBox(
                height: 27.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contView2(
                      name: "Rental Cars & Bikes", icon: Assetsurl.icrentalcar),
                  contView2(name: "Trains & Bus", icon: Assetsurl.ictrain),
                  contView2(
                      name: "Special Discounts", icon: Assetsurl.icdiscount),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  thinkView(icon: Assetsurl.icthink, text: "Things to do"),
                  thinkView(icon: Assetsurl.icrestaurants, text: "Restaurants"),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: AppColors.contGradient,
                ),
                height: 144.h,
                width: 345.w,
                child: Row(
                  children: [
                    Image.asset(
                      Assetsurl.ictravel,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'AI Trip Planner',
                              style: TextStyle(
                                fontFamily: Typo.ManropeSemiBold,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                              Assetsurl.icstar,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 29.h,
                            width: 110.w,
                            child: Center(
                              child: Text(
                                "Start Planning",
                                style: TextStyle(
                                  fontFamily: Typo.ManropeBold,
                                  fontSize: 12,
                                  color: Color(0xff686F81),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container thinkView({icon, text}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 2.0,
          color: AppColors.blueAccent,
        ),
      ),
      height: 42.h,
      width: 165.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              height: 18.h,
              icon,
              color: AppColors.blueAccent,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(
                fontFamily: Typo.ManropeMedium,
                fontSize: 16,
                color: AppColors.blueAccent,
              ),
            ),
          )
        ],
      ),
    );
  }

  Column contView2({icon, name}) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          radius: 30,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              height: 20.h,
              fit: BoxFit.cover,
              icon,
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(
            fontFamily: Typo.ManropeRegular,
            fontSize: 11,
            color: AppColors.textcolor,
          ),
        ),
      ],
    );
  }

  Container contView1({icon, name}) {
    return Container(
      height: 103.h,
      width: 95.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              height: 40.h,
              icon,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontFamily: Typo.ManropeRegular,
              fontSize: 15,
              color: AppColors.textcolor,
            ),
          ),
        ],
      ),
    );
  }
}
