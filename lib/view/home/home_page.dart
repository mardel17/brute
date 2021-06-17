import 'package:brute/utils/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> menus = [
    <String, String>{"name": "Loyalty", "image": "images/loyalty.png"},
    <String, String>{"name": "Quotes", "image": "images/quote.png"},
    <String, String>{"name": "Horoscope", "image": "images/horoscope.png"},
    <String, String>{"name": "Token", "image": "images/token.png"},
    <String, String>{"name": "News", "image": "images/news.png"},
    <String, String>{"name": "Shop", "image": "images/shop.png"},
    <String, String>{"name": "br(A)K", "image": "images/brak.png"},
    <String, String>{"name": "Game", "image": ""},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                      child: Center(child: Image.asset('images/brute.png'))),
                  InkWell(
                      onTap: () =>
                          Navigator.of(context).pushNamed(ROUTE.SETTING),
                      child: Icon(Icons.settings)),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(36),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2,
                children: List.generate(menus.length, (index) {
                  Map<String, String> menu = menus[index];
                  return InkWell(
                    onTap: () {
                      if (index == menus.length - 1) {
                        showToast("Coming soon");
                      } else {
                        String route = "/" + menu["name"]!;
                        Navigator.of(context).pushNamed(route);
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.ac_unit),
                          ),
                          SizedBox(height: 4),
                          Text(
                            menu["name"]!,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
