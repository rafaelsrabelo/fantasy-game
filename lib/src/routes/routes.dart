import 'package:fantasygame/src/pages/home_tab.dart';
import 'package:fantasygame/src/pages/onboarding_screen.dart';
import 'package:fantasygame/src/pages/sign_in_screen.dart';
import 'package:fantasygame/src/pages/sign_up_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    'login': (context) => const SignInScreen(),
    'register':(context) => SignUpScreen(),
    'home': (context) => HomeTab(),
    'onboarding': (context) => const OnBoardingScreen()
  };
}