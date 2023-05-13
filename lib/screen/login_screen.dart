import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_navigation_bar.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: 1.sw,
            height: 1.sh,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/Login_bg.png"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 0.12.sh,
                ),
                Container(
                  width: 1.sw,
                  height: 0.35.sh,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFFFEFEFE).withOpacity(0.7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Text(
                          "Welcome Back",
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "E-mail",
                        style: GoogleFonts.redHatDisplay(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
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
                              color: Color(0xFF0F0F0F),
                              style: BorderStyle.solid,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                          ),
                          prefixIconColor: const Color(0xFF0F0F0F),
                          hintText: "Enter Your E-mail",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color(0xFF0F0F0F),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF0F0F0F),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Password",
                        style: GoogleFonts.redHatDisplay(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
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
                              color: Color(0xFF0F0F0F),
                              style: BorderStyle.solid,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_open_outlined,
                          ),
                          prefixIconColor: const Color(0xFF0F0F0F),
                          hintText: "Enter Your Password",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color(0xFF0F0F0F),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF0F0F0F),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Forgot password?",
                  style: GoogleFonts.redHatDisplay(
                    fontSize: 14,
                    color: const Color(0xFFFFA500),
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const BottomNavigationBarV()));
                  },
                  child: Container(
                    width: 1.sw,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFFFA500),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.redHatDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 0.43.sw,
                      height: 1.h,
                      color: Colors.white,
                    ),
                    Text(
                      "Or",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 0.43.sw,
                      height: 1.h,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const BottomNavigationBarV()));
                  },
                  child: Container(
                    width: 1.sw,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login with Google",
                            style: GoogleFonts.redHatDisplay(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Image.asset("assets/google_logo.png")
                        ]),
                  ),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Sign Up",
                      style: GoogleFonts.redHatDisplay(
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        color: const Color(0xFFFFA500),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
