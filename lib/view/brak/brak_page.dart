import 'package:flutter/material.dart';

class BrakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ],
              ),
              Text("Brak"),
            ],
          ),
        ),
      ),
    );
  }
}
