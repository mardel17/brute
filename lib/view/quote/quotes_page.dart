import 'package:brute/utils/const.dart';
import 'package:brute/widget/period_button.dart';
import 'package:flutter/material.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Flexible(child: Container()),
          Container(
            margin: EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  "Alternatively, your editor might support pub. Check the docs for your editor to learn more.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                Text("- Steve O"),
              ],
            ),
          ),
          Flexible(
            child: Center(
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.upload_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
