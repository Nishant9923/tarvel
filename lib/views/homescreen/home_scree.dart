import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/colorpallet.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> names = [
    'Top Offers',
    'Flights',
    'Hotels',
    'Bus',
  ];

  final List<String> items = [
    "Top Offers",
    "Flight",
    "Hotels",
    "Cars",
  ];

  int selectedtabindex = 0;
  int selectedIndex = -1;
  int currentIndex = 0;

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
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'AI Trip Planner',
                                style: TextStyle(
                                  fontFamily: Typo.ManropeSemiBold,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                              height: 15.h,
                              Assetsurl.icaiplaner,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 29.h,
                            width: 125.w,
                            child: Center(
                              child: TextButton(
                                onPressed: () {},
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
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Destinations",
                    style: TextStyle(
                      fontFamily: Typo.InterBold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontFamily: Typo.InterRegular,
                        fontSize: 14,
                        color: AppColors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 25,
                      mainAxisExtent: 200),
                  children: List.generate(
                    4,
                    (index) {
                      final List<String> imageadd = [
                        Assetsurl.icparis,
                        Assetsurl.icbail,
                        Assetsurl.icjapan,
                        Assetsurl.iciceland,
                      ];
                      final List<String> names = [
                        "Paris",
                        "Bail",
                        "Japan",
                        "Iceland",
                      ];

                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imageadd[index]),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150, left: 120),
                          child: Text(
                            names[index],
                            style: TextStyle(
                              fontFamily: Typo.InterSemiBold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      Assetsurl.ictimetraavel,
                    ),
                    Image.asset(Assetsurl.ictimetraavel),
                    Image.asset(Assetsurl.ictimetraavel),
                    Image.asset(Assetsurl.ictimetraavel),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Journey together",
                    style: TextStyle(
                      fontFamily: Typo.InterSemiBold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontFamily: Typo.InterRegular,
                        fontSize: 14,
                        color: AppColors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 250.h,
                width: 345.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                      Assetsurl.icrect3,
                    ),
                    Text(
                      "Mount Bromo",
                      style: TextStyle(
                        fontFamily: Typo.InterSemiBold,
                        fontSize: 14,
                        color: AppColors.blackboldcolor,
                      ),
                    ),
                    Text(
                      "Volcano in East Java",
                      style: TextStyle(
                        fontFamily: Typo.InterRegular,
                        fontSize: 9.sp,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: SvgPicture.asset(
                            Assetsurl.icrating,
                            color: Colors.amber,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            '4.9',
                            style: TextStyle(
                              fontFamily: Typo.InterRegular,
                              fontSize: 9.sp,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Start from',
                                style: TextStyle(
                                    fontFamily: Typo.InterRegular,
                                    fontSize: 10.sp,
                                    color: AppColors.secondaryColor),
                              ),
                              Text(
                                'Rs.56,150/per',
                                style: TextStyle(
                                  fontFamily: Typo.InterRegular,
                                  fontSize: 10.sp,
                                  color: AppColors.textcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "3D2N",
                            style: TextStyle(
                              fontFamily: Typo.InterRegular,
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontFamily: Typo.InterSemiBold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontFamily: Typo.InterRegular,
                        fontSize: 14,
                        color: AppColors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 300,
                ),
                children: List.generate(
                  2,
                  (index) {
                    final List<String> image = [
                      Assetsurl.icbeach,
                      Assetsurl.icmountain,
                    ];
                    final List<String> name = [
                      "Beach",
                      "Mountains",
                    ];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image[index]),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 255, left: 9),
                            child: Text(
                              name[index],
                              style: TextStyle(
                                fontFamily: Typo.InterBold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Visited Places',
                    style: TextStyle(
                        fontFamily: Typo.InterSemiBold,
                        fontSize: 16,
                        color: AppColors.textcolor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontFamily: Typo.InterRegular,
                          fontSize: 14,
                          color: AppColors.blueAccent),
                    ),
                  ),
                ],
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 300,
                ),
                children: List.generate(
                  2,
                  (index) {
                    final List<String> image = [
                      Assetsurl.icjapan,
                      Assetsurl.icmaldives,
                    ];
                    final List<String> name = [
                      "Japan",
                      "Maldives",
                    ];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image[index]),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 255, left: 9),
                            child: Text(
                              name[index],
                              style: TextStyle(
                                fontFamily: Typo.InterBold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    height: 20.h,
                    Assetsurl.icbxs,
                  ),
                  SizedBox(width: 3.w),
                  Text(
                    "Special Offer",
                    style: TextStyle(
                      fontFamily: Typo.InterSemiBold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontFamily: Typo.InterRegular,
                        fontSize: 14,
                        color: AppColors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(items.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: SizedBox(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 30.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: selectedIndex != index
                                    ? AppColors.secondaryColor
                                    : Colors.green),
                          ),
                          child: Center(
                            child: Text(
                              items[index],
                              style: TextStyle(
                                  fontFamily: Typo.InterRegular,
                                  fontSize: 14,
                                  color: selectedIndex != index
                                      ? AppColors.textcolor
                                      : AppColors.secondaryColor),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  newMethod(),
                  newMethod(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container newMethod() {
    return Container(
      height: 220.h,
      width: 171.w,
      color: Colors.white,
      child: Stack(
        children: [
          Image.asset(
            Assetsurl.icoffer1,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 95,
            right: 11,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              height: 28.h,
              width: 93.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColors.blueAccent,
                    child: SvgPicture.asset(
                      Assetsurl.icflight4,
                      height: 15.h,
                    ),
                  ),
                  Text(
                    'Flights',
                    style: TextStyle(
                      fontFamily: Typo.InterRegular,
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 13,
            top: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New User Offer",
                  style: TextStyle(
                      fontFamily: Typo.InterSemiBold,
                      fontSize: 14,
                      color: Colors.black),
                ),
                Text(
                  "Sign up & enjoy a discount on\nyour first flight booking with us!",
                  style: TextStyle(
                      fontFamily: Typo.InterRegular,
                      fontSize: 8,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 8.h,
                ),
                DottedBorder(
                  color: AppColors.blueAccent,
                  dashPattern: [4, 4],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.dottedbordercolor,
                    ),
                    height: 25.h,
                    width: 148.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Use Code:',
                          style: TextStyle(
                              fontFamily: Typo.InterRegular,
                              fontSize: 9.sp,
                              color: Colors.black),
                        ),
                        Text(
                          'ACEFIRST',
                          style: TextStyle(
                              fontFamily: Typo.InterRegular,
                              fontSize: 8.sp,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Valid till: 30th Nov, 2024",
                  style: TextStyle(
                      fontFamily: Typo.InterRegular,
                      fontSize: 9.sp,
                      color: Colors.black),
                ),
              ],
            ),
          )
        ],
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
