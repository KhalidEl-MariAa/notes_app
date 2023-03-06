import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class main_page extends StatelessWidget {
  const main_page({super.key});
  static String main_id= 'main page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      actions:  [GestureDetector(child: const Icon(Icons.search,size: 30,)),const SizedBox(width: 10,)],
      centerTitle: false,
      title: const Padding(
        padding:  EdgeInsets.only(left:8.0),
        child:  Text('Notes',style: TextStyle(fontWeight: FontWeight.bold),),
      ) ,)
    );
  }
}