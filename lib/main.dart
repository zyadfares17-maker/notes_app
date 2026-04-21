import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/views/notes_view.dart';

void main() async {
   await Hive.initFlutter();
    await Hive.openBox('notes_box');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
      fontFamily: 'poppins',
     brightness: Brightness.dark
     ),
     home: const NotesView(
     
     ),
    );
  }                              
}