import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_appbar.dart';
import 'package:nots_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key, required CustomAppBar customAppBar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 50),
           CustomAppBar(),
            Expanded(child: NotesListView()),
            ],
      ),
    );
  }
}


