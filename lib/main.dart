import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/pages/edit_note_page.dart';
import 'package:notes_app/pages/main_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(boxname);
  Hive.registerAdapter(notemodelAdapter());
  runApp(const notes_app());
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      routes: {main_page.main_id:(context) => const main_page(),Edit_Note_Page.id:(context) => const Edit_Note_Page()},
      initialRoute: main_page.main_id,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins') ,
      
      

    );
  }
}
