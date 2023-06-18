import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/constants.dart';
import 'package:flutter_app_7_note_app/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:flutter_app_7_note_app/models/note_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'custom_button.dart';
import 'custom_color_iteam.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode awtoValidateMode = AutovalidateMode.disabled;

  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: awtoValidateMode,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(hintText: "Add", onSaved: (data) => title = data),
              const SizedBox(height: 22),
              CustomTextField(
                  hintText: "Contnt",
                  maxLines: 5,
                  onSaved: (data) => subTitle = data),
              const SizedBox(
                height: 75,
              ),
              const SizedBox(height: 60, child: ColorListView()),
              BlocBuilder<AddNotesCubit, AddNotesState>(
                builder: (context, state) {
                  return CustomButton(
                    isLoading: state is AddNotesLoading ? true : false,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        var formattedCurrentDate =
                            DateFormat.yMEd().format(DateTime.now());

                        var noteModel = NoteModel(
                            title: title!,
                            subTitle: subTitle!,
                            date: formattedCurrentDate.toString(),
                            color: Colors.blue.value);
                        BlocProvider.of<AddNotesCubit>(context)
                            .addNote(noteModel);
                      } else {
                        awtoValidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ));
  }
}



class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> colorsL = kColorList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: colorsL.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: GestureDetector(
              onTap: () {
                currentIndex = index;

                BlocProvider.of<AddNotesCubit>(context).color = colorsL[index];
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                colorV: colorsL[index],
              )),
        );
      },
    );
  }
}
