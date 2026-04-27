import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nots_app/models/note_model.dart';

void main() async {
   await Hive.initFlutter();
    await Hive.openBox(kNotesBox);
    Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),

      ],
      child: Container(),
    );
  }                              
}