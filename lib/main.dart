import 'package:ecommerce/pages/sign_in_page.dart';
import 'package:ecommerce/pages/sign_up_page.dart';
import 'package:ecommerce/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (contaxt) => SignUpPage(),
      },
    );
  }
}
