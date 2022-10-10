import 'package:app_ecom_buidwigga/ui/pages/home_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/on_boarding_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/sign_in_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/sign_up_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/sign_up_set_ktp_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/sign_up_set_profile.dart';
import 'package:app_ecom_buidwigga/ui/pages/sign_up_succes_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/splash_screen_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up-set-ktp': (context) => const SignUpKtp(),
        '/sign-up-set': (context) => const SignInSetProfile(),
        '/sign-up-succes': (context) => const SignUpSucces(),
        '/home-page': (context) => const HomePage(),
      },
    );
  }
}
