import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/views/widgets/Custom%20_button.dart';
import 'package:nots_app/views/widgets/custom_textfiled.dart';

class AddNoteBottomSeet extends StatelessWidget {
  const AddNoteBottomSeet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16,),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
 final GlobalKey<FormState> formkey  = GlobalKey();

 AutovalidateMode autovalidateMode = AutovalidateMode.disabled;  

  String? title,content;   
class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
         const SizedBox(height: 32,),
          CustomTextfiled(

            onSaved: (value) {
              title =value;
            },
            hintText: 'Title',
          ),
      
         const SizedBox(height: 16,),
          
          CustomTextfiled(
            onSaved: (value) {
              content =value;
            },
            hintText: 'Content', maxLines: 5,),
          
         const SizedBox(height: 32,),
         
         CustomButton(title: 'Add ',
         color: kPrimaryColor,
         titleColor: Colors.black,
         onTap: (){
          if (formkey.currentState!.validate()) {
            formkey.currentState!.save();
          }else{
            autovalidateMode =AutovalidateMode.always;
            setState(() {
              
            });
          }
         },
         ),
         
         const SizedBox(height: 24,),
        ],
      ),
    );
  }
}
