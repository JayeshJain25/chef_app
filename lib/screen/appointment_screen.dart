import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'chef_details.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Appointments",
          style: GoogleFonts.redHatDisplay(
            fontSize: 18,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Container(
            height: 32,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 87,
                    height: 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: const Color(0xFFFFA500),
                    ),
                    child: Center(
                      child: Text(
                        "Booked",
                        style: GoogleFonts.redHatDisplay(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.only(left: 17),
            child: Text(
              "Recent",
              style: GoogleFonts.redHatDisplay(
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const ChefDetailsScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/test2.png",
                      height: 160,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
