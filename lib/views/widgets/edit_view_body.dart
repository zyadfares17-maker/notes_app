import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_appbar.dart';
import 'package:nots_app/views/widgets/custom_textfiled.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
        SizedBox(height: 50),
        CustomAppBar(
          icon: Icons.done,
          title: ' Edit Note',),
          SizedBox(height: 32,),
          CustomTextfiled(hintText: 'Title'),
           SizedBox(height: 16),
          CustomTextfiled(
            hintText: 'Content',
            maxLines: 5,
            ),
        ],
      ),
    );
  }
}