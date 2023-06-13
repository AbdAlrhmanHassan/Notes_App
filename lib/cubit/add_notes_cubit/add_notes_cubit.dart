import 'package:bloc/bloc.dart';
import 'package:flutter_app_7_note_app/constants.dart';
import 'package:flutter_app_7_note_app/models/note_models.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) {
    var notesBox = Hive.box(kNotesBox);

    notesBox.add(note);
  }
}
