import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:untitled/Utils/custom_button.dart';
import 'package:untitled/core/colors.dart';

import 'success_screen_for_password_reset.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox()
                ],
              ),
              SizedBox(height: 15),
              const Text(
                'Reset Password',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(height: 20),
              const Text('Please enter your email address to request a reset',
                  style: TextStyle(color: EuluvColors.normaltextcolor)),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Enter your email address",
                      style: TextStyle(color: EuluvColors.normaltextcolor)),
                  const SizedBox(height: 15),
                  TextFormField(
                      validator: (val) => val!.isEmpty || !val.contains("@")
                          ? "enter a valid eamil"
                          : null,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 0.2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 0.2,
                            color: Colors.grey,
                          ),
                        ),
                      )),
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
                  CustomButtonEuluv(
                    wid: wid,
                    buttonTitle: 'Submit Email',
                    onpressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SuccessScreenForPasswordReset()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
