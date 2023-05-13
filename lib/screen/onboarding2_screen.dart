import 'package:chef_app/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingTwoScreen extends StatelessWidget {
  const OnBoardingTwoScreen({super.key});

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
                "assets/onboarding2.png",
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Order the best services from the comfort of your home",
              style: GoogleFonts.redHatDisplay(
                fontSize: 32,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Experience culinary excellence with the expertise of top-rated chefs in your city.",
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
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 1.sw,
                    height: 45.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFFFA500),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started!",
                        style: GoogleFonts.redHatDisplay(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
