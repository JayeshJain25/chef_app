import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChefDetailsScreen extends StatelessWidget {
  const ChefDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/details.png",
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: 30,
                    left: 28,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        "assets/back_button.png",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Culinary Showcase",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.redHatDisplay(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: Text(
                      "See More",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.redHatDisplay(
                          color: const Color(0xFFFFA500),
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (ctx, index) {
                    return Container(
                      width: 80,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: DashedCircle(
                        color: Colors.deepOrangeAccent,
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: CircleAvatar(
                            radius: 28.0,
                            backgroundImage: AssetImage("assets/showcase1.png"),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/test1.png"),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
