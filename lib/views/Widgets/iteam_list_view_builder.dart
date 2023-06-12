import 'package:flutter/material.dart';

import 'custom_note_view_card.dart';

class IteamListViewBuilder extends StatelessWidget {
  const IteamListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0),
          child: NoteItem(),
        );
      },
    );
  }
}
