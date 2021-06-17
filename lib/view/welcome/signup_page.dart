import 'package:brute/widget/entry_field.dart';
import 'package:brute/widget/submit_round.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  final teName = TextEditingController();
  final tePhone = TextEditingController();
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
                    Text("Sign up")
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
                    teController: teName,
                    keyboardType: TextInputType.name,
                    hint: "Name",
                  ),
                  SizedBox(height: 24),
                  EntryField(
                    teController: tePhone,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    hint: "Phone Number",
                  ),
                  SizedBox(height: 24),
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
                    title: "CREATE ACCOUNT",
                    callback: () {},
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
