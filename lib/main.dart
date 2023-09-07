import 'package:darjoraapp/pages/chart_page.dart';
import 'package:darjoraapp/pages/checkout_page.dart';
import 'package:darjoraapp/pages/detail_page.dart';
import 'package:darjoraapp/pages/loading.dart';
import 'package:darjoraapp/pages/login_page.dart';
import 'package:darjoraapp/pages/main_page.dart';
import 'package:darjoraapp/pages/sucess_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoadingPage(),
        '/login-page': (context) => LoginPage(),
        '/main-page': (context) => MainMenuPage(),
        '/detail-page': (context) => DetailPage(),
        '/chart-page': (context) => ChartPage(),
        '/checkout-page': (context) => CheckoutPage(),
        '/success-page': (context) => SuccessPage(),
      },
    );
  }
}
