import 'package:flutter/material.dart';
import 'package:untitled/core/colors.dart';
import 'package:untitled/core/image_string.dart';
import 'package:untitled/features/login/forgotpassword.dart';

import 'package:untitled/features/sign_up/createaccount.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    AppImages.logologin,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Welcome Back',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text('Fill in the details to continue to your account',
                    style: TextStyle(color: EuluvColors.normaltextcolor)),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email Address",
                        style: TextStyle(color: EuluvColors.normaltextcolor)),
                    const SizedBox(height: 15),
                    TextFormField(
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
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Password",
                        style: TextStyle(color: EuluvColors.normaltextcolor)),
                    const SizedBox(height: 15),
                    TextFormField(
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
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 50,
                        width: wid / 1.35,
                        decoration: BoxDecoration(
                          color: EuluvColors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ))),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.barcode_reader,
                          color: Colors.white,
                        )),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('-- or --', style: TextStyle(color: Colors.black)),
                const SizedBox(height: 20),
                Container(
                    height: 60,
                    width: wid,
                    decoration: BoxDecoration(
                      color: EuluvColors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset(AppImages.bglogo1),
                          const SizedBox(width: 60),
                          Image.asset(AppImages.gol),
                          const SizedBox(width: 10),
                          const Text(
                            'Login in with Google',
                            style:
                                TextStyle(color: EuluvColors.normaltextcolor),
                          )
                        ],
                      ),
                    )),
                const SizedBox(height: 20),
                Container(
                    height: 60,
                    width: wid,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset(AppImages.bglogo1),
                          const SizedBox(width: 60),
                          Image.asset(AppImages.applelogo),
                          const SizedBox(width: 10),
                          const Text(
                            'Login in with Apple',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()));
                  },
                  child: const Text('Forgot Password?',
                      style: TextStyle(
                          color: EuluvColors.deapteal,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 40),
                    const Text('Don\'t have an account?',
                        style: TextStyle(
                            color: EuluvColors.purple,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 12),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateAccount()));
                      },
                      child: Text('Create Account?',
                          style: TextStyle(
                              color: EuluvColors.deapteal,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
