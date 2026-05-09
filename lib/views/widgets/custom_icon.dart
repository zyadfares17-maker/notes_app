import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon,   this.onPressed});
 final void Function()? onPressed;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16)
      ) ,
      child: IconButton(
        onPressed: onPressed,
        icon : Icon(
          icon,
        size: 28,
        ),
        color: Colors.white,
      ),
    );
  }
}