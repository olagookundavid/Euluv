import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/core/colors.dart';
import 'package:untitled/core/image_string.dart';

class SuccessAccountCreationPage extends StatelessWidget {
  const SuccessAccountCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(),
          Column(
            children: [
              SvgPicture.asset(AppImages.successA,
                  semanticsLabel: 'Euluv Logo'),
              SizedBox(height: 20),
              Text(
                'Account Created Successfully',
                style: TextStyle(fontSize: 20, color: EuluvColors.purple),
              )
            ],
          ),
          SizedBox(),
        ],
      ),
    ));
  }
}
