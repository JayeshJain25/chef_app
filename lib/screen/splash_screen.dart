import 'package:chef_app/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => const OnboardingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/Logo.png",
            ),
          ),
        ],
      ),
    );
  }
}
