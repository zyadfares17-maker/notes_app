import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: 'Title',
       hintStyle: TextStyle(
          color: KPrimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color color = Colors.white}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: color ?? Colors.white)
      );
  }
}