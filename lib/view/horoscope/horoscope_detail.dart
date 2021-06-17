import 'package:brute/utils/const.dart';
import 'package:brute/widget/period_button.dart';
import 'package:flutter/material.dart';

class HoroscopeDetail extends StatelessWidget {
  const HoroscopeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.all(24),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Text("Gemini"),
                        SizedBox(height: 4),
                        Text("March 24, 2021 TODAY"),
                        SizedBox(height: 24),
                        Text(
                            "Alternatively, your editor might support pub. Check the docs for your editor to learn more. Alternatively, your editor might support pub. Check the docs for your editor to learn more. Alternatively, your editor might support pub. Check the docs for your editor to learn more."),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 18,
                    child: Icon(Icons.ac_unit),
                  )
                ],
              ),
            ),
            SizedBox(height: 48),
            InkWell(
              onTap: () {},
              child: Icon(Icons.upload_rounded),
            )
          ],
        ),
      ),
    );
  }
}
