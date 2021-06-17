import 'package:flutter/material.dart';
import 'package:brute/utils/const.dart';

class EntryField extends StatelessWidget {
  EntryField({
    Key? key,
    this.hint,
    this.teController,
    this.keyboardType,
    this.isPassword,
  }) : super(key: key);

  final String? hint;
  final TextEditingController? teController;
  final TextInputType? keyboardType;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: TextField(
        controller: teController,
        obscureText: isPassword ?? false,
        style: TextStyle(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          hintText: hint ?? "",
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),
        keyboardType: keyboardType ?? TextInputType.emailAddress,
      ),
    );
  }
}
