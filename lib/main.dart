import 'package:flutter/material.dart';
import 'package:untitled/features/onboarding/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Euluv',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen());

    /* ProviderScope(
      child: 
    ); */
  }
}
