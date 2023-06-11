import 'package:flutter/material.dart';

import 'package:untitled/core/colors.dart';

import 'verifyaccount.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Initial Selected Value
  String dropdownvalue = 'Nigeria';

  // List of items in our dropdown menu
  var items = [
    'Nigeria',
    'Ghana',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 40),
            const Text(
              'You’re almost there',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(height: 20),
            const Text('Fill in the details to continue to your account',
                style: TextStyle(color: EuluvColors.normaltextcolor)),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Country/ Location",
                    style: TextStyle(color: EuluvColors.normaltextcolor)),
                const SizedBox(height: 15),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: wid,
                        height: 60,
                        child: DropdownButton(
                          isExpanded: true,
                          alignment: Alignment.centerRight,
                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyAccount()));
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
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
          ]),
        ),
      ),
    );
  }
}
