import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/core/colors.dart';
import 'package:untitled/core/image_string.dart';

class SuccessScreenForPasswordReset extends StatelessWidget {
  const SuccessScreenForPasswordReset({super.key});

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
              SvgPicture.asset(AppImages.successforrset,
                  semanticsLabel: 'Euluv Logo'),
              const SizedBox(height: 20),
              const Text(
                'Link sent successfully',
                style: TextStyle(fontSize: 20, color: EuluvColors.purple),
              ),
              const SizedBox(height: 30),
              const Text(
                'Please check your email for reset link',
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
