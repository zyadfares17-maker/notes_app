import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:nots_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor:kPrimaryColor,
        shape: const CircleBorder(),
        
        onPressed: ()
        
        {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
           builder: (context){
            return const AddNoteBottomSeet();
           });
        },
      child: Icon(  
        
        Icons.add,
        color: Colors.black,
        size: 32,),
      ),
      body:  NotesViewBody(),
    );
  }
}
