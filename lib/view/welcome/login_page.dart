import 'package:brute/widget/entry_field.dart';
import 'package:brute/widget/submit_round.dart';
import 'package:brute/utils/const.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final teEmail = TextEditingController();
  final tePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.6,
              child: Image.asset('images/brute.png'),
            ),
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Log in")
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  EntryField(
                    teController: teEmail,
                    hint: "Email",
                  ),
                  SizedBox(height: 24),
                  EntryField(
                    teController: tePassword,
                    keyboardType: TextInputType.text,
                    hint: "Password",
                    isPassword: true,
                  ),
                  SizedBox(height: 24),
                  SubmitRound(
                    isBorder: false,
                    title: "LOGIN",
                    callback: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                      Navigator.of(context).pushReplacementNamed(ROUTE.HOME);
                    },
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
