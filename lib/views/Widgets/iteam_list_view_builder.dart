import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/cubit/note_cubit/notes_page_cubit.dart';
import 'package:flutter_app_7_note_app/models/note_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_note_view_card.dart';

class IteamListViewBuilder extends StatelessWidget {
  const IteamListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesPageCubit, NotesPageState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesPageCubit>(context).fetchAllNotes();

        
        print("$notes[]  dfsafdsaasfdasdasdf");
        return ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: NoteItem(
                noteModel: notes[index],
              ),
            );
          },
        );
      },
    );
  }
}
