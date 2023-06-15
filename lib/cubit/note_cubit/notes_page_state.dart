// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'notes_page_cubit.dart';

@immutable
abstract class NotesPageState {}

class NotesPageInitial extends NotesPageState {}

class NotesPageLoading extends NotesPageState {}

class NotesPageSuccess extends NotesPageState {
  final List<NoteModel> notes;
  NotesPageSuccess({
    required this.notes,
  });
}

class NotesPageFailure extends NotesPageState {
  final String errMessage;
  NotesPageFailure({
    required this.errMessage,
  });
}
