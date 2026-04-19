import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,
  
   required this.color,required this.title,  required this.titleColor,this.onTap});
String title;
Color color;
Color titleColor; 
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
            decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8)
          
            ),
            width: MediaQuery.of(context).size.width ,
            height: 65,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
                ),
                ),
          ),
    );
  }
}