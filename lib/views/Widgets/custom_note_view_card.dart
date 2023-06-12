import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/views/Edit_note_page.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNotePage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffffcd7a),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            minVerticalPadding: 0,
            contentPadding: const EdgeInsets.all(0),
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
              padding: const EdgeInsets.all(0),
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
      ),
    );
  }
}
