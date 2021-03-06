import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:restapi/services/notes_services.dart';
import 'package:restapi/view/note_list.dart';

void setupLocator(){
  GetIt.I.registerLazySingleton(() => NotesService());
}
void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NoteList(),
    );
  }
}

