import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:flutter_app_7_note_app/constants.dart';
import 'package:flutter_app_7_note_app/models/note_models.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
    Color color=const Color.fromRGBO(155, 171, 184, 1);

  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      note.color = color.value;
      await notesBox.add(note);
      print(notesBox);
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }

    emit(AddNotesSuccess());
  }
}
