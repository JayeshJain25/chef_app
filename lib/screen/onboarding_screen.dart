import 'package:flutter/material.dart';

import 'onboarding1_screen.dart';
import 'onboarding2_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();

  int _curr = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> list = <Widget>[
      Center(
        child: OnBoardingOneScreen(
          pageController: controller,
        ),
      ),
      const Center(
        child: OnBoardingTwoScreen(),
      ),
    ];
    return Scaffold(
      body: PageView(
          allowImplicitScrolling: true,
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: list,
          onPageChanged: (value) {
            setState(() {
              _curr = value;
            });
          }),
    );
  }
}
