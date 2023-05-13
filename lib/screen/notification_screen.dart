import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'chef_details.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Notification",
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
            margin: const EdgeInsets.only(left: 17),
            child: Text(
              "Recent",
              style: GoogleFonts.redHatDisplay(
                fontSize: 18,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
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
                    "assets/test3.png",
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
