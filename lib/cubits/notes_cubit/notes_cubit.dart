import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotestInitial());



  List<NoteModel>? notes;
   fetchAllNotes() async {
   
  var notesbox = Hive.box<NoteModel>(kNotesBox);

  notes = notesbox.values.toList();

    
  }
}
