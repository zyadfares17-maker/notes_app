import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/views/widgets/Custom%20_button.dart';
import 'package:nots_app/views/widgets/custom_textfiled.dart';

class AddNoteBottomSeet extends StatelessWidget {
  const AddNoteBottomSeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextfiled(
              hintText: 'Title',
            ),
            SizedBox(height: 16,),
            CustomTextfiled(hintText: 'Description', maxLines: 5,),
            SizedBox(height: 32,),
           CustomButton(title: 'Add ',
           color: KPrimaryColor,
           titleColor: Colors.black,
           ),
           SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
}
