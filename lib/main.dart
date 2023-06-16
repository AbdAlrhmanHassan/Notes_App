import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/models/note_models.dart';
import 'package:flutter_app_7_note_app/simple_bloc_observer.dart';
import 'package:flutter_app_7_note_app/views/note_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'constants.dart';
import 'cubit/note_cubit/notes_page_cubit.dart';

void main() async {
  Bloc.observer = simpleBlocObserver();

  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesPageCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotePage(),
      ),
    );
  }
}
