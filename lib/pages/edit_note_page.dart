import 'package:flutter/material.dart';
import 'package:notes_app/factors/edit_note.dart';

class Edit_Note_Page extends StatelessWidget {
  const Edit_Note_Page({super.key});
  static String id = 'Edit Note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 51, 51, 51),
    actions:  [GestureDetector(child: Container(child: const Icon(Icons.check,size: 30,),decoration: BoxDecoration(color:const Color.fromARGB(255, 46, 46, 46),borderRadius: BorderRadius.circular(50) ),width: 50,)),const SizedBox(width: 10,)],
    centerTitle: false,
    title: const Padding(
    padding:  EdgeInsets.only(left:8.0),
    child:  Text('Edit Note',style: TextStyle(fontWeight: FontWeight.bold),),
    ) ,),

    body: const Edit_Note() ,
    );
  }
}