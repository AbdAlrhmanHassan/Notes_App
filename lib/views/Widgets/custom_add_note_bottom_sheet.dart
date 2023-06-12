
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child:  const Column(
        children: [
          CustomTextField(hintText: "Add"),
          SizedBox(height: 12),
          CustomTextField(
            hintText: "Contnt",
            maxLines: 5,
          ),
          Expanded(
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
