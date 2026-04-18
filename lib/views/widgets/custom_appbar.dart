import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
          ),
        
        ),
        Spacer(flex: 1,),
        CustomSearchIcon()
      ],
    );
  }
}

