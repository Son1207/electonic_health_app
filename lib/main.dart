import 'package:electronic_health_app/page/Home/Components/Category/CategoryCertification.dart';
import 'package:electronic_health_app/page/Home/Components/Category/CategoryDeclaration.dart';
import 'package:electronic_health_app/page/Home/Components/CovidData.dart';
import 'package:electronic_health_app/page/Home/Components/Category/TestResult/testresult.dart';
import 'package:electronic_health_app/page/NavigationBar.dart';
import 'package:electronic_health_app/page/Home/HomePage.dart';
import 'package:electronic_health_app/page/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:electronic_health_app/page/SplashPage.dart';
import 'package:electronic_health_app/page/SignInPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        SplashPage.routeName: (context) => const SplashPage(),
        SignInPage.routeName: ((context) => const SignInPage()),
        SignUpPage.routeName: ((context) => const SignUpPage()),
        HomePage.routeName: ((context) => const MyNavigationBar()),
        CategoryDeclaration.routeName: ((context) =>
            const CategoryDeclaration()),
        CategoryCertification.routeName: ((context) =>
            const CategoryCertification()),
        CovidData.routeName: (context) => const CovidData(),
        TestResultPage.routeName: (context) => const TestResultPage()
      },
      home: const SplashPage(),
    );
  }
}
