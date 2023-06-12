import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/views/Widgets/custom_text_field.dart';

import 'Widgets/custom_search_icon.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

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
        actions: [const CustomSearchIcon(icon: Icon(Icons.check))],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
        child: Column(
          children: [
            CustomTextField(hintText: "Title"),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Content",
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}
