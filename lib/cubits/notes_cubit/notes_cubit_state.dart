part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesState {}

final class NotestInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState 
{
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

final class NotesFailure extends NotesState {

  final String errorMessage;

  NotesFailure(this.errorMessage);
}
