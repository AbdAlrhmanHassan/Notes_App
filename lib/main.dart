import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/models/note_models.dart';
import 'package:flutter_app_7_note_app/views/Note_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotePage(),
    );
  }
}
