import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/Services/navigation_service.dart';
import 'package:untitled/routes.dart';

import 'Services/snack_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Euluv',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),

        onGenerateRoute: Routes.generateRoute,
        navigatorKey: ref.read(navigationService).navigatorKey,
        scaffoldMessengerKey: ref.read(snackbarService).scaffoldMessengerKey,
      ),
    );
  }
}
