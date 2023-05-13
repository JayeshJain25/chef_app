import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingOneScreen extends StatelessWidget {
  OnBoardingOneScreen({
    super.key,
    required this.pageController,
  });
  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 1.sw,
              height: 0.45.sh,
              child: Image.asset(
                "assets/onboarding1.png",
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Explore delicious meals",
              style: GoogleFonts.redHatDisplay(
                fontSize: 32,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "seamlessly",
              style: GoogleFonts.redHatDisplay(
                fontSize: 32,
                color: const Color(0xFFFFA500),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Discover a world of scrumptious cuisine with our easy-to-use app.",
                style: GoogleFonts.redHatDisplay(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 15,
                  height: 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    color: const Color(0xFFF3F3F3),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Container(
                  width: 40,
                  height: 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    color: const Color(0xFFFFA500),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Container(
                  width: 15,
                  height: 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    color: const Color(0xFFF3F3F3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skip",
                    style: GoogleFonts.redHatDisplay(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: const Color(0xFFFFA500),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                    onTap: () {
                      pageController.animateToPage(
                        1,
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.linear,
                      );
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xFFFFEFB6),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFFEFB6),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Iconsax.next,
                                size: 15,
                                color: Colors.black,
                              ),
                              Text(
                                "Next",
                                style: GoogleFonts.redHatDisplay(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
