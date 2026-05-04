import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled( {this.onSaved ,super.key, required this.hintText, this.maxLines = 1});
final String hintText;
final int maxLines;
 final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines,
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
         if (value?.isEmpty ?? true) {
          return'Field is required';
        }
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hintText,
       hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color color = Colors.white}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          // ignore: dead_null_aware_expression, dead_code
          color: color ?? Colors.white)
      );
  }
}