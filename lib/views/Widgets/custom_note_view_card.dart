import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/cubit/note_cubit/notes_page_cubit.dart';
import 'package:flutter_app_7_note_app/models/note_models.dart';
import 'package:flutter_app_7_note_app/views/Edit_note_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNotePage(
              noteModel: noteModel,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            minVerticalPadding: 0,
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              noteModel.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              noteModel.subTitle,
              style: TextStyle(
                  color: Colors.black.withOpacity(.6),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //   backgroundColor: Colors.white,
                //   content: const Text('are you shore ',
                //       style: TextStyle(fontSize: 16)),
                //   duration: const Duration(seconds: 3),
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                //   behavior: SnackBarBehavior.floating,
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10.0)),
                // ));
                noteModel.delete();

                BlocProvider.of<NotesPageCubit>(context).reloadPage();
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Text(
            noteModel.date,
            style: const TextStyle(color: Colors.black, fontSize: 14),
          )
        ]),
      ),
    );
  }
}
