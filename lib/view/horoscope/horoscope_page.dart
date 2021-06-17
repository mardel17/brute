import 'package:brute/utils/const.dart';
import 'package:brute/widget/period_button.dart';
import 'package:flutter/material.dart';

class HoroscopePage extends StatefulWidget {
  @override
  _HoroscopePageState createState() => _HoroscopePageState();
}

class _HoroscopePageState extends State<HoroscopePage> {
  final List<Map<String, String>> menus = [
    <String, String>{"name": "Aries", "image": "images/loyalty.png"},
    <String, String>{"name": "Taurus", "image": "images/quote.png"},
    <String, String>{"name": "Gemini", "image": "images/horoscope.png"},
    <String, String>{"name": "Cancer", "image": "images/token.png"},
    <String, String>{"name": "Leo", "image": "images/news.png"},
    <String, String>{"name": "Virgo", "image": "images/shop.png"},
    <String, String>{"name": "Libra", "image": "images/brak.png"},
    <String, String>{"name": "Scorpio", "image": ""},
    <String, String>{"name": "Sagittarius", "image": ""},
    <String, String>{"name": "Aquarius", "image": ""},
    <String, String>{"name": "Capricorn", "image": ""},
    <String, String>{"name": "Pisces", "image": ""},
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Text(
          "Horoscopes",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose Your Sign"),
            Flexible(
              child: GridView.count(
                padding: EdgeInsets.only(top: 16),
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.1,
                children: List.generate(menus.length, (index) {
                  Map<String, String> menu = menus[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(ROUTE.HOROSCOPE_DETAIL);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(menu["name"]!),
                    ),
                  );
                }),
              ),
            ),
            Text("Choose Period"),
            SizedBox(height: 24),
            Row(
              children: [
                Flexible(
                  child: PeriodButton(
                    isActive: (_selectedIndex == 0),
                    title: "Daily",
                    callback: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                ),
                SizedBox(width: 8),
                Flexible(
                  child: PeriodButton(
                    isActive: (_selectedIndex == 1),
                    title: "Weekly",
                    callback: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                ),
                SizedBox(width: 8),
                Flexible(
                  child: PeriodButton(
                    isActive: (_selectedIndex == 2),
                    title: "Monthly",
                    callback: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                ),
                SizedBox(width: 8),
                Flexible(
                  child: PeriodButton(
                    isActive: (_selectedIndex == 3),
                    title: "Yearly",
                    callback: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
