import 'package:brute/view/brak/brak_page.dart';
import 'package:brute/view/home/home_page.dart';
import 'package:brute/view/horoscope/horoscope_detail.dart';
import 'package:brute/view/horoscope/horoscope_page.dart';
import 'package:brute/view/loyalty/loyalty_page.dart';
import 'package:brute/view/news/news_page.dart';
import 'package:brute/view/quote/quotes_page.dart';
import 'package:brute/view/setting/setting_page.dart';
import 'package:brute/view/shop/shop_page.dart';
import 'package:brute/view/token/token_page.dart';
import 'package:brute/view/welcome/login_page.dart';
import 'package:brute/view/welcome/signup_page.dart';
import 'package:brute/view/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:brute/utils/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'brute',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: ROUTE.WELCOME,
      routes: {
        ROUTE.WELCOME: (context) => WelcomePage(),
        ROUTE.SIGNUP: (context) => SignupPage(),
        ROUTE.LOGIN: (context) => LoginPage(),
        ROUTE.HOME: (context) => HomePage(),
        ROUTE.SETTING: (context) => SettingPage(),
        '/Loyalty': (context) => LoyaltyPage(),
        '/Quotes': (context) => QuotesPage(),
        '/Horoscope': (context) => HoroscopePage(),
        '/Token': (context) => TokenPage(),
        '/News': (context) => NewsPage(),
        '/Shop': (context) => ShopPage(),
        '/br(A)K': (context) => BrakPage(),
        ROUTE.HOROSCOPE_DETAIL: (context) => HoroscopeDetail(),
      },
    );
  }
}
