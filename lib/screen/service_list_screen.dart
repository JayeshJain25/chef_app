import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'chef_details.dart';

class ServiceListScreen extends StatelessWidget {
  const ServiceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Services",
          style: GoogleFonts.redHatDisplay(
            fontSize: 18,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            "assets/back_button.png",
          ),
        ),
      ),
      body: Column(
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
          Expanded(
            child: ListView.builder(
              itemCount: 10,
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
              },
            ),
          )
        ],
      ),
    );
  }
}
