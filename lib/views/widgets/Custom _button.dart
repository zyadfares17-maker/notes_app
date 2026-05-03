import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.isLoading = false,
   
    this.color,required this.title,   this.titleColor,this.onTap});
String title;
Color? color;
Color? titleColor; 
VoidCallback? onTap;
final bool isLoading;
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
              child: isLoading
                  ? const SizedBox(
                    height: 30,
                    width: 30,
                    child:  CircularProgressIndicator(
                        color: Colors.black,
                    ),
                  )
                  :  Text(
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