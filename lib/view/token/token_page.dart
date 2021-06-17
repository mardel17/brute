import 'dart:async';

import 'package:flutter/material.dart';

class TokenPage extends StatefulWidget {
  @override
  _TokenPageState createState() => _TokenPageState();
}

class _TokenPageState extends State<TokenPage> {
  late Timer _timer;
  int _seconds = 0;
  String _timeString = "00:00:00";

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void initTimer() {
    if (_seconds == 0) {
      _timer = Timer.periodic(Duration(seconds: 1), (_) => showTimer());
      _seconds = 24;
    }
  }

  void showTimer() {
    _seconds--;
    if (_seconds <= 0) {
      _seconds = 0;
      _timer.cancel();
    }

    Duration duration = Duration(seconds: _seconds);
    setState(() {
      _timeString = _printDuration(duration);
    });

    if (duration.inSeconds == 0) {
      //Need to add balance 0.03
      print("here 00000");
    }
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.alarm,
              color: Colors.white,
            ),
            SizedBox(width: 16),
            Text(
              _timeString,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            InkWell(onTap: initTimer, child: Image.asset('images/brute.png')),
            Text("Balance"),
            SizedBox(height: 24),
            Text(
              "622.9435",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 24),
            Text(
              "+0.03 BRT/hr",
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(height: 24),
            Align(alignment: Alignment.centerLeft, child: Text("Team")),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(top: 16),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100.0,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  if (index == 7) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              child: Icon(
                                Icons.add_circle_outline,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Flexible(
                              child: Text(
                                "Invite\nFriends",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 24,
                                child: Image.asset("images/brak.png")),
                            SizedBox(height: 8),
                            Flexible(
                              child: Text(
                                "Michael Jordan",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
                itemCount: 8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
