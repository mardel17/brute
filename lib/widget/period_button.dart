import 'package:flutter/material.dart';
import 'package:brute/utils/const.dart';

typedef void VoidCallback();

class PeriodButton extends StatelessWidget {
  PeriodButton({Key? key, required this.isActive, this.title, this.callback})
      : super(key: key);

  final bool isActive;
  final String? title;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 36,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive
              ? Colors.purpleAccent.withOpacity(0.2)
              : Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        child: Text(
          title ?? "",
          style: TextStyle(
            fontSize: 16,
            color: isActive ? Colors.white : Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
