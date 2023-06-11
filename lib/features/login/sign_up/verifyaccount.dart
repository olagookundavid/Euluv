import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:untitled/core/colors.dart';
import 'package:untitled/features/login/sign_up/account_creation_success.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            SizedBox(height: 40),
            const Text(
              'Verify your email',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                const Text('We have sent a verification code to the email',
                    style: TextStyle(color: EuluvColors.normaltextcolor)),
                const Text('johndoe@gmail.com',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                OtpTextField(
                  fieldWidth: 70,
                  numberOfFields: 4,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        });
                  }, // end onSubmit
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: wid / 4),
                    const Text('Didn’t receive code?',
                        style: TextStyle(
                            color: EuluvColors.purple,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 12),
                    InkWell(
                      onTap: () {
                        //resend otp
                      },
                      child: const Text('Resend',
                          style: TextStyle(
                              color: EuluvColors.deapteal,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SuccessAccountCreationPage()));
                  },
                  child: Container(
                      height: 50,
                      width: wid,
                      decoration: BoxDecoration(
                        color: EuluvColors.purple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                          child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
