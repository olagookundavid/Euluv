import 'package:flutter/material.dart';

import 'package:untitled/core/colors.dart';
import 'package:untitled/core/image_string.dart';
import 'package:untitled/features/login/login_screen.dart';
import 'package:untitled/features/login/sign_up/location.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                const Text('Create Your Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                const Text('Fill in the details to continue to your account',
                    style: TextStyle(color: EuluvColors.normaltextcolor)),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("First Name",
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
                    const Text("Last Name",
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
                    const Text("Phone Number",
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
                    const Text("Referral Code (Optional)",
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
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LocationScreen()));
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
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const SizedBox(width: 40),
                    const Text('Already have an account?',
                        style: TextStyle(
                            color: EuluvColors.purple,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 12),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: const Text('Sign in?',
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
