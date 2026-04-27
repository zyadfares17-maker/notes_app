import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  addNote(NoteModel note) async {
    emit(AddNoteLoading());
   try {
  var notesbox = Hive.box<NoteModel>(kNotesBox);
  emit(AddNoteSuccess());
   await notesbox.add(note);
} catch (e) {
 AddNoteFailure(e.toString());
 }
    }
}
