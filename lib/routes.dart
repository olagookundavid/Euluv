import 'package:flutter/material.dart';

class Routes {
  static const onboarding = '/onboarding';
  static const signUp = '/signUp';
  static const verifyPhone = '/verifyPhone';
  static const success = '/success';
  static const transferSuccess = '/transferSuccess';
  static const fundsDone = '/fundsDone';
  static const login = '/login';
  static const home = '/home';
  static const emailVerification = '/emailVerification';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case onboarding:
      //   return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      // case signUp:
      //   return MaterialPageRoute(builder: (_) => const SignUpPage());
      // case login:
      //   return MaterialPageRoute(builder: (_) => const LoginPage());
      // case emailVerification:
      //   return MaterialPageRoute(
      //       builder: (_) => const EmailVerificationScreen());
      // case success:
      //   final arguments = settings.arguments as Map<String, dynamic>;
      //   final text = arguments['text'];
      //   final onPressed = arguments['func'];
      //   final btnText = arguments['btnText'];
      //   return MaterialPageRoute(
      //       builder: (_) => SuccessScreen(
      //             text: text,
      //             onPressed: onPressed,
      //             btnText: btnText,
      //           ));
      // case fundsDone:
      //   final arguments = settings.arguments as Map<String, dynamic>;
      //   final onPressed = arguments['func'];
      //   final btnText = arguments['btnText'];
      //   return MaterialPageRoute(
      //       builder: (_) => FundsDone(
      //             onPressed: onPressed,
      //             btnText: btnText,
      //           ));
      // case transferSuccess:
      //   final arguments = settings.arguments as Map<String, dynamic>;
      //   final amt = arguments['amt'];
      //   final onPressed = arguments['func'];
      //   final name = arguments['name'];
      //   final btnText = arguments['btnText'];
      //   return MaterialPageRoute(
      //       builder: (_) => TransferSuccessScreen(
      //             amt: amt,
      //             onPressed: onPressed,
      //             btnText: btnText,
      //             name: name,
      //           ));
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}


/*
ref.read(navigationService).navigateOffAllNamed(
                        Routes.signUp, (Route<dynamic> route) => false);
 */