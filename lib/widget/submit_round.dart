import 'package:flutter/material.dart';
import 'package:brute/utils/const.dart';

typedef void VoidCallback();

class SubmitRound extends StatelessWidget {
  SubmitRound({Key? key, required this.isBorder, this.title, this.callback})
      : super(key: key);

  final bool isBorder;
  final String? title;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 63,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isBorder ? Colors.black : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(38)),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Text(
          title ?? "",
          style: TextStyle(
            fontSize: 16,
            color: isBorder ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
