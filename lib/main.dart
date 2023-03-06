import 'package:flutter/material.dart';
import 'package:notes_app/pages/main_page.dart';

void main() {
  runApp(const notes_app());
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {main_page.main_id:(context) => main_page()},
      initialRoute: main_page.main_id,
      theme: ThemeData.dark() ,

    );
  }
}
