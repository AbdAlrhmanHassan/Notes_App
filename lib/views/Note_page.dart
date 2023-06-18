import 'package:flutter/material.dart';


import 'Widgets/custom_add_note_bottom_sheet.dart';
import 'Widgets/custom_search_icon.dart';
import 'Widgets/iteam_list_view_builder.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text("Notes"),
        ),
        actions: const [CustomSearchIcon(icon: Icon(Icons.search))],
      ),
      body: const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 0),
          child: IteamListViewBuilder()),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add)),
    );
  }
}
