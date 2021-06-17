import 'package:brute/widget/submit_round.dart';
import 'package:brute/utils/const.dart';
import 'package:flutter/material.dart';

import 'package:find_dropdown/find_dropdown.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.4,
              child: Image.asset('images/brute.png'),
            ),
            Text("Welcome To The Game Level 99"),
            Expanded(
              child: Container(),
            ),
            Icon(Icons.credit_card, size: 48),
            SizedBox(height: 24),
            Text("Modern And Easy Way To Enjoy Your Loyalty Cards"),
            SizedBox(height: 24),
            SubmitRound(
              isBorder: true,
              title: "SIGN UP",
              callback: () => Navigator.of(context).pushNamed(ROUTE.SIGNUP),
            ),
            SizedBox(height: 24),
            SubmitRound(
              isBorder: false,
              title: "LOGIN",
              callback: () => Navigator.of(context).pushNamed(ROUTE.LOGIN),
            ),
            SizedBox(height: 24),
            Theme(
              data: ThemeData.light().copyWith(
                primaryColor: Colors.blueAccent,
                accentColor: Colors.yellow,
                colorScheme: ColorScheme.light(primary: Colors.redAccent),
              ),
              child: FindDropdown(
                items: [
                  "Brasil",
                  "Itália",
                  "Estados Unidos",
                  "Canadá",
                  "Test long sentence Test long sentenceTest long sentenceTest long sentence"
                ],
                label: "País",
                onChanged: (String? item) => print(item),
                selectedItem:
                    "Test long sentence Test long sentenceTest long sentenceTest long sentence",
                backgroundColor: Colors.blue,
                labelStyle: TextStyle(color: Colors.purpleAccent),
                dropdownBuilder: (context, selectedItem) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            selectedItem.toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
