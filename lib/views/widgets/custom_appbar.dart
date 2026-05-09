import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ super.key, required this.icon, required this.title, this.onPressed} );
final String title ;
final IconData icon;
 final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  [
        Text(
         title,
          style: const TextStyle(
            fontSize: 30,
          ),
        
        ),
        Spacer(flex: 1,),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}

