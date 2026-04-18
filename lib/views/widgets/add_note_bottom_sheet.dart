import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_textfiled.dart';

class AddNoteBottomSeet extends StatelessWidget {
  const AddNoteBottomSeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,),
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextfiled(),
        ],
      ),
    );
  }
}