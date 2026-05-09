import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});


  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) =>  EditNoteView(
            note: note,
            ),
            ),
            );
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 24, left:16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16)
        ) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              
              title: Row(
                children: [
                  Text(note.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                  ),
                  Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.only(top: 50,
                    left: 16
                    ),
                    child: IconButton(
                      onPressed: ()
                      {
                        note.delete();
                        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      },
                     icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 32,
                     )
                     ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10,
                bottom: 16
                ),
                child: Text(note.subtitle,
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 18,
                  )
                ),
              ),
      
            
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 16
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}