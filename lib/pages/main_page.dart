import 'package:flutter/material.dart';
import 'package:notes_app/factors/add_note_showbottom.dart';

import '../factors/customNote.dart';


class main_page extends StatelessWidget {
  const main_page({super.key});
  static String main_id= 'main page';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
    backgroundColor: const Color.fromARGB(255, 51, 51, 51),
    actions:  [GestureDetector(child: Container(child: const Icon(Icons.search,size: 30,),decoration: BoxDecoration(color:const Color.fromARGB(255, 46, 46, 46),borderRadius: BorderRadius.circular(50) ),width: 50,)),const SizedBox(width: 10,)],
    centerTitle: false,
    title: const Padding(
    padding:  EdgeInsets.only(left:8.0),
    child:  Text('Notes',style: TextStyle(fontWeight: FontWeight.bold),),
    ) ,),
    floatingActionButton: FloatingActionButton(onPressed: () {
      showModalBottomSheet(context: context, builder: (context) => Notes_Add());
    },
    child: const Icon(Icons.add)),
     body: ListView.builder(itemBuilder: ((context, index) {
        return const customNote();
      })),
    );
  }
}



