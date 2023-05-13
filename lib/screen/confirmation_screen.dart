import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Confirmation",
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
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(
            "assets/test9.png",
          ),
          const SizedBox(
            height: 70,
          ),
          Image.asset(
            "assets/test10.png",
          )
        ],
      )),
    );
  }
}
