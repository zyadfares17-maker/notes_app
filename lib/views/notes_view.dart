import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:nots_app/views/widgets/custom_appbar.dart';
import 'package:nots_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 36, 196, 196),
        shape: const CircleBorder(),
        
        onPressed: ()
        
        {
          showModalBottomSheet(context: context,
           builder: (context){
            return const AddNoteBottomSeet();
           });
        },
      child: Icon(  
        
        Icons.add,
        color: Colors.black,
        size: 32,),
      ),
      body:  const NotesViewBody(
        customAppBar: CustomAppBar()
      ),
    );
  }
}
