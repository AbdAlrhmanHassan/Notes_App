import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NoteItem(),
          ],
        ),
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffcd7a),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.all(0),
          title: const Text(
            "Flutter tips",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          subtitle: Text(
            "Here you can write your notes . ",
            style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          trailing: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.black,
              size: 26,
            ),
          ),
        ),
        const Text(
          "June 11,2023",
          style: TextStyle(color: Colors.black, fontSize: 18),
        )
      ]),
    );
  }
}
