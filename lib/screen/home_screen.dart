import 'package:chef_app/screen/cart_screen.dart';
import 'package:chef_app/screen/chef_details.dart';
import 'package:chef_app/screen/saved_service_screen.dart';
import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'service_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/profile.png",
                ),
                title: Text(
                  "Good Afternoon",
                  style: GoogleFonts.redHatDisplay(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  "Good Aisha",
                  style: GoogleFonts.redHatDisplay(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                trailing: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const CartScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: const Color(
                        0xFFFFA500,
                      ),
                    ),
                    child: const Icon(
                      Iconsax.shopping_bag5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.redHatDisplay(
                    color: const Color(0xFF9E9E9E),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0xFFF3F3F3),
                        style: BorderStyle.solid,
                      ),
                    ),
                    fillColor: const Color(0xFFF3F3F3),
                    filled: true,
                    prefixIcon: const Icon(
                      Iconsax.search_favorite,
                    ),
                    prefixIconColor: const Color(0xFF9A9999),
                    hintText: "Search...",
                    hintStyle: GoogleFonts.redHatDisplay(
                      fontSize: 14,
                      color: const Color(0xFF9A9999),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color(0xFFF3F3F3),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 180,
                  ),
                  Image.asset(
                    "assets/Subtract.png",
                    width: 1.sw,
                    height: 140.h,
                  ),
                  Positioned.fill(
                    left: 45.w,
                    bottom: 25.h,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 250.w,
                        child: Text(
                          "Looking for a chef to cater for \nyour next event? \nLook no further, book  now and \nget 10% off your bookings",
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    right: 24.w,
                    top: 10.h,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                          width: 59.w, child: Image.asset("assets/Promo.png")),
                    ),
                  ),
                  Positioned.fill(
                    right: 24.w,
                    bottom: 20.h,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 103,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFA500),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Book Now",
                            style: GoogleFonts.redHatDisplay(
                                color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chefs Near You",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.redHatDisplay(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const ServiceListScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See more",
                        style: GoogleFonts.redHatDisplay(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          color: const Color(0xFFFFA500),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const ChefDetailsScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/chef_card.png",
                          height: 160,
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
