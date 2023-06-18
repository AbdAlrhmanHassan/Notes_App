import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/cubit/note_cubit/notes_page_cubit.dart';
import 'package:flutter_app_7_note_app/models/note_models.dart';
import 'package:flutter_app_7_note_app/views/Widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import 'Widgets/custom_color_iteam.dart';
import 'Widgets/custom_search_icon.dart';

class EditNotePage extends StatefulWidget {
  EditNotePage({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  String? title;

  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text("Edit Notes"),
        ),
        actions: [
          CustomSearchIcon(
            icon: const Icon(Icons.check),
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = subTitle ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<NotesPageCubit>(context).reloadPage();
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
        child: Column(
          children: [
            CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                hintText: widget.noteModel.title),
            const SizedBox(height: 20),
            CustomTextField(
              onChanged: (value) {
                subTitle = value;
              },
              hintText: widget.noteModel.subTitle,
              maxLines: 5,
            ),
            const SizedBox(height: 45),
            SizedBox(
              height: 70,
              child: EditNoteColorList(
                noteModel: widget.noteModel,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColorList.indexOf(Color(widget.noteModel.color));

    // for (int i = 0; i < kColorList.length; i++) {
    //   if (widget.noteModel.color == kColorList[i].value) {
    //     currentIndex = i;
    //     break;
    //   }
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: kColorList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.noteModel.color = kColorList[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                colorV: kColorList[index],
              )),
        );
      },
    );
  }
}
