

import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}
    , child: Text('Add',style: TextStyle(color: Colors.black),)

    ,style: ElevatedButton.styleFrom(fixedSize: const Size(360, 50),backgroundColor: color),
    );
  }
}