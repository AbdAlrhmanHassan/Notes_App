import 'package:flutter/material.dart';

import 'custom_search_icon.dart';
import 'iteam_list_view_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

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
        actions: const [CustomSearchIcon()],
      ),
      body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: IteamListViewBuilder()),
    );
  }
}

