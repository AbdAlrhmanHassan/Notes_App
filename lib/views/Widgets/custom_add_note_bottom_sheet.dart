import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Container(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 30,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            } else if (state is AddNotesFailure) {
              print("faillied ${state.errMessage}");
            }
          },
          builder: (context, state) {
            
            return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
