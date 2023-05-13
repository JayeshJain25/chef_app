import 'package:chef_app/screen/confirmation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

enum BestTutorSite { javatpoint, w3schools }

class _CheckOutScreenState extends State<CheckOutScreen> {
  BestTutorSite _site = BestTutorSite.javatpoint;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Checkout",
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
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/test7.png",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: const Color(0xFFF3F3F3),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Cash On Delivery",
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 14,
                            color: const Color(0xFF9A9999),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Radio(
                      value: BestTutorSite.javatpoint,
                      groupValue: _site,
                      onChanged: (BestTutorSite? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ]),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: const Color(0xFFF3F3F3),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset("assets/visa.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "0000 0000 3214",
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 14,
                            color: const Color(0xFF9A9999),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Radio(
                      value: BestTutorSite.w3schools,
                      groupValue: _site,
                      onChanged: (BestTutorSite? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ]),
            ),
            const SizedBox(
              height: 292,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ConfirmationScreen(),
                  ),
                );
              },
              child: Center(
                child: Image.asset(
                  "assets/test8.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
