import 'package:electronic_health_app/page/Home/Components/Category/CategoryCertification.dart';
import 'package:electronic_health_app/page/Home/Components/Category/CategoryDeclaration.dart';
import 'package:electronic_health_app/page/NavigationBar.dart';
import 'package:electronic_health_app/page/Home/HomePage.dart';
import 'package:electronic_health_app/page/SignUpPage.dart';
import 'package:electronic_health_app/page/SplashPage/splash_screen.dart';
import 'package:flutter/material.dart';
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
        Splash.routeName:(context) => const Splash(),
        SignInPage.routeName: ((context)=>const SignInPage()),
        SignUpPage.routeName: ((context)=>const SignUpPage()),
        HomePage.routeName: ((context)=>const HomePage()),
        MyNavigationBar.routeName: ((context)=> const MyNavigationBar()),
        CategoryDeclaration.routeName: ((context)=> const CategoryDeclaration()),
        CategoryCertification.routeName: ((context)=> const CategoryCertification()),
      },
      home: const Splash(),
    );
  }
}

