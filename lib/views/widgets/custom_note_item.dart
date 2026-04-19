import 'package:flutter/material.dart';
import 'package:nots_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => const EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 24, left:16),
        decoration: BoxDecoration(
          color: Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16)
        ) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              
              title: Row(
                children: [
                  Text('Flutter tips',
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
                    child: IconButton(onPressed: (){},
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
                child: Text('Build your career with Zyad Fares.',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 18,
                  )
                ),
              ),
      
            
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('May 21, 2024',
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