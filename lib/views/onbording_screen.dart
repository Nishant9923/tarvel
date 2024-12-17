import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});

  final PageController _pageController = PageController();

  void _onNextPage(BuildContext context) {
    if (_pageController.page == 2) {
      context.go('/home');
    } else {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(24),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assetsurl.iconbording2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 550),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Find Cheaper\nFlights Instantly",
                              style: TextStyle(
                                fontFamily: Typo.ManropeBold,
                                fontSize: 28,
                                color: const Color(0xffF9F9F9),
                              ),
                            ),
                            const SizedBox(
                              height: 19,
                            ),
                            Text(
                              "Compare prices from all flight booking\nservices in one place. Book the best deal\neffortlessly!",
                              style: TextStyle(
                                fontFamily: Typo.ManropeRegular,
                                fontSize: 16,
                                color: const Color(0xffF9F9F9),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () => _onNextPage(context),
                                  icon: Icon(
                                    size: 40,
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.blueAccent,
                      dotColor: Colors.white,
                      dotHeight: 10,
                      dotWidth: 15,
                      expansionFactor: 4,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).goNamed(Routes.LanguageScreen.name);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontFamily: Typo.ManropeRegular,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
