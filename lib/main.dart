import 'package:app_ecom_buidwigga/shared/theme.dart';
import 'package:app_ecom_buidwigga/ui/pages/home_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/on_boarding_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/pin_page.dart';
import 'package:app_ecom_buidwigga/ui/pages/profile_edit_photo.dart';
import 'package:app_ecom_buidwigga/ui/pages/profile_page.dart';
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
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: blackColor),
            titleTextStyle: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 20,
            ),
          )),
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up-set-ktp': (context) => const SignUpKtp(),
        '/sign-up-set': (context) => const SignInSetProfile(),
        '/sign-up-succes': (context) => const SignUpSucces(),
        '/home-page': (context) => const HomePage(),
        '/profil-page': (context) => const ProfilePage(),
        '/pin-page': (context) => const PinPage(),
        '/edit-profil-page': (context) => const EditProfilePage(),
      },
    );
  }
}
