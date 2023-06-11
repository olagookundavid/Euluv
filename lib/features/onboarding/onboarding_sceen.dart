import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/core/image_string.dart';
import 'package:untitled/features/login/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = CarouselController();
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    final hei = MediaQuery.of(context).size.height / 1.8;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text('Skip',
                      style:
                          TextStyle(color: EuluvColors.purple, fontSize: 20)),
                )
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: hei,
              width: wid,
              child: ListView(
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    carouselController: controller,
                    options: CarouselOptions(
                      autoPlayInterval: const Duration(seconds: 1),
                      autoPlay: true,
                      height: MediaQuery.of(context).size.height,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ),
                    //the spaces are to deal with alignment issue.
                    items: [
                      Onboadingpages(
                          textone: AppImages.onboardingsvg1,
                          headtitle:
                              "Satisfaction in Every Buyer-Seller Transaction",
                          desc:
                              "Get an overview of how you are performing and motivate yourself to achieve even more.",
                          wid: wid),
                      Onboadingpages(
                          textone: AppImages.onboardingsvg2,
                          headtitle:
                              "Securing e-commerce transaction with safe payment channel.",
                          desc:
                              "Get an overview of how you are performing and motivate yourself to achieve even more",
                          wid: wid),
                      Onboadingpages(
                          textone: AppImages.onboardingsvg3,
                          headtitle:
                              "Secure and Safe Transactions with Escrow Services.",
                          desc:
                              "Get an overview of how you are performing and motivate yourself to achieve even more",
                          wid: wid),
                      Onboadingpages(
                          textone: AppImages.onboardingsvg4,
                          headtitle: "Easily Buy and Sell From One Wallet",
                          desc:
                              "Get an overview of how you are performing and motivate yourself to achieve even more",
                          wid: wid),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            buildIndicator(),
          ],
        ),
      ),
    ));
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 4,
      effect: const ExpandingDotsEffect(
        activeDotColor: EuluvColors.purple,
        dotWidth: 10,
        dotHeight: 8,
      ));
}

class Onboadingpages extends StatelessWidget {
  final String textone;
  final String headtitle;
  final String desc;

  const Onboadingpages({
    Key? key,
    required this.wid,
    required this.textone,
    required this.desc,
    required this.headtitle,
  }) : super(key: key);

  final double wid;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(),
        width: wid,
        height: 400,
        child: Column(
          children: [
            Container(
              width: wid,
              height: 250,
              child: Row(
                children: [
                  SvgPicture.asset(textone, semanticsLabel: 'Euluv Logo'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                headtitle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              desc,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ));
  }
}
