import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: const AddNoteForm(),
    );
  }
}

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
      child: Column(
        children: [
          CustomTextField(hintText: "Add", onSaved: (data) => title = data),
          const SizedBox(height: 12),
          CustomTextField(
              hintText: "Contnt",
              maxLines: 5,
              onSaved: (data) => subTitle = data),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
