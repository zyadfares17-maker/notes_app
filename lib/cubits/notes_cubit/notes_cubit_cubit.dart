import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotestInitial());




  void fetchAllNotes() async {
    emit(NotesLoading());
   try {
  var notesbox = Hive.box<NoteModel>(kNotesBox);

  List<NoteModel> notes = notesbox.values.toList();
    emit(NotesSuccess(notes));
} catch (e) {
   emit(NotesFailure(e.toString()));
 }
    
  }
}
