import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(cursorColor: color,
    decoration: InputDecoration(hintText: 'Title',
    hintStyle: TextStyle(color: color)
    ,border: BuildBorder(),
    enabledBorder: BuildBorder(),
    focusedBorder: BuildBorder(color: color)),);
  }

  OutlineInputBorder BuildBorder({color}) {
    return OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide:  BorderSide(color: color ?? Colors.white));
  }

}