import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:nots_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:nots_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          shape: const CircleBorder(),

          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
          child: Icon(Icons.add, color: Colors.black, size: 32),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
