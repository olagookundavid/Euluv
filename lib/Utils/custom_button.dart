import 'package:flutter/material.dart';

import 'package:untitled/core/colors.dart';

class CustomButtonEuluv extends StatelessWidget {
  const CustomButtonEuluv({
    super.key,
    required this.wid,
    required this.onpressed,
    required this.buttonTitle,
  });

  final double wid;
  final Function onpressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onpressed();
        },
        child: Container(
            height: 50,
            width: wid,
            decoration: BoxDecoration(
              color: EuluvColors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
              buttonTitle,
              style: const TextStyle(color: Colors.white),
            ))));
  }
}
