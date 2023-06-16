import 'package:bloc/bloc.dart';
import 'package:flutter_app_7_note_app/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import '../../models/note_models.dart';

part 'notes_page_state.dart';

class NotesPageCubit extends Cubit<NotesPageState> {
  NotesPageCubit() : super(NotesPageInitial());
  Box<NoteModel> notesBox = Hive.box<NoteModel>(kNotesBox);

  List<NoteModel>? notes;
  List<NoteModel> fetchAllNotes() {
    notes = notesBox.values.toList();
    return notes ??[];
  }
  void reloadPage() {
    emit(NotesPageReload());
  }
}
