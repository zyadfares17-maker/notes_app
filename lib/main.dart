import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/simple_bloc_observe.dart';
import 'package:nots_app/views/notes_view.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();
     await Hive.initFlutter();

    Hive.registerAdapter(NoteModelAdapter());
    await Hive.openBox<NoteModel>(kNotesBox);
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