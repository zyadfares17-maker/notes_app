import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesState> {
  NotesCubitCubit() : super(NotesCubitInitial());
}
