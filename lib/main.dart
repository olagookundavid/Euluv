import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/Services/navigation_service.dart';
import 'package:untitled/routes.dart';

import 'Services/snack_service.dart';
=======
import 'package:untitled/features/onboarding/splashscreen.dart';
>>>>>>> f38272fc5dc196ecc33ae33708340023ce06bcad

void main() {
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
<<<<<<< HEAD
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: MaterialApp(
=======
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
>>>>>>> f38272fc5dc196ecc33ae33708340023ce06bcad
        title: 'Euluv',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
<<<<<<< HEAD
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),

        onGenerateRoute: Routes.generateRoute,
        navigatorKey: ref.read(navigationService).navigatorKey,
        scaffoldMessengerKey: ref.read(snackbarService).scaffoldMessengerKey,
      ),
    );
=======
        home: const SplashScreen());

    /* ProviderScope(
      child: 
    ); */
>>>>>>> f38272fc5dc196ecc33ae33708340023ce06bcad
  }
}
