import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/note_models.dart';

part 'notes_page_state.dart';

class NotesPageCubit extends Cubit<NotesPageState> {
  NotesPageCubit() : super(NotesPageInitial());
}
