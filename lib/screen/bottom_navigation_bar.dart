import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'appointment_screen.dart';
import 'home_screen.dart';
import 'notification_screen.dart';
import 'saved_service_screen.dart';

class BottomNavigationBarV extends StatefulWidget {
  const BottomNavigationBarV({super.key});

  @override
  State<BottomNavigationBarV> createState() => _BottomNavigationBarVState();
}

class _BottomNavigationBarVState extends State<BottomNavigationBarV> {
  int index = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const AppointmentScreen(),
    const SaveServiceListScreen(),
    const NotificationScreen(),
    const HomeScreen(),
  ];

  void _onItemTapped(int indexV) {
    setState(() {
      index = indexV;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions[index],
      ),
      bottomNavigationBar: SizedBox(
        width: 1.sw,
        height: 90.h,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          enableFeedback: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.all(3),
                width: 80,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == 0 ? const Color(0xFFFFA500) : Colors.white,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/chef.png",
                      color:
                          index == 0 ? Colors.black : const Color(0xFF757575),
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(3),
                width: 80,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == 1 ? const Color(0xFFFFA500) : Colors.white,
                ),
                child: Column(
                  children: [
                    Icon(
                      Iconsax.calendar_search,
                      color:
                          index == 1 ? Colors.black : const Color(0xFF757575),
                    ),
                    Text(
                      "Appointment",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(3),
                width: 80,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == 2 ? const Color(0xFFFFA500) : Colors.white,
                ),
                child: Column(
                  children: [
                    Icon(
                      Iconsax.save_add,
                      color:
                          index == 2 ? Colors.black : const Color(0xFF757575),
                    ),
                    Text(
                      "Saved",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(3),
                width: 80,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == 3 ? const Color(0xFFFFA500) : Colors.white,
                ),
                child: Column(
                  children: [
                    Icon(
                      Iconsax.notification4,
                      color:
                          index == 3 ? Colors.black : const Color(0xFF757575),
                    ),
                    Text(
                      "Notification",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(3),
                width: 80,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == 4 ? const Color(0xFFFFA500) : Colors.white,
                ),
                child: Column(
                  children: [
                    Icon(
                      Iconsax.user,
                      color:
                          index == 4 ? Colors.black : const Color(0xFF757575),
                    ),
                    Text(
                      "User",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
              label: "",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          selectedItemColor: Colors.black,
          selectedLabelStyle: GoogleFonts.redHatDisplay(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          unselectedLabelStyle: GoogleFonts.redHatDisplay(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          iconSize: 20,
          onTap: _onItemTapped,
          elevation: 1,
        ),
      ),
    );
  }
}
