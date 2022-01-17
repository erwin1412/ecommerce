import 'package:ecommerce/pages/Help.dart';
import 'package:ecommerce/pages/detail_chat_page.dart';
import 'package:ecommerce/pages/edit_profile.dart';
import 'package:ecommerce/pages/home/main_page.dart';
import 'package:ecommerce/pages/sign_in_page.dart';
import 'package:ecommerce/pages/sign_up_page.dart';
import 'package:ecommerce/pages/splash_page.dart';
import 'package:ecommerce/pages/your_orders.dart';
import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: backgroundColor1,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/your-orders': (context) => YourOrdersPage(),
        '/help': (context) => HelpPage(),
      },
    );
  }
}
