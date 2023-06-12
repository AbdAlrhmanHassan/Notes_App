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
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: const Text("Notes"),
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
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: const Text(
              "Flutter tips",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            subtitle: const Text(
              "Here you can write your notes . ",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 26,
                )),
          ),
          const Text(
            "June 11,2023",
            style: TextStyle(color: Colors.black, fontSize: 18),
          )
        ]),
      ),
    );
  }
}
