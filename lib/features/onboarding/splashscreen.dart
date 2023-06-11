import 'package:flutter/material.dart';
import 'package:untitled/core/colors.dart';
import 'package:untitled/core/image_string.dart';
import 'package:untitled/features/onboarding/onboarding_sceen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EuluvColors.purple,
      body: Column(children: [
        SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Image.asset(AppImages.gblogo2),
          ],
        ),
        Image.asset(AppImages.logo),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AppImages.bglogo1),
            SizedBox.shrink(),
          ],
        ),
      ]),
    );
  }
}
