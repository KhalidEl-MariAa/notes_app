import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintext,this.MaxLines});
 final String hintext;
  final int? MaxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(maxLines: MaxLines,
    cursorColor: color,
    decoration: InputDecoration(hintText: hintext,
    hintStyle: TextStyle(color: color)
    ,border: BuildBorder(),
    enabledBorder: BuildBorder(),
    focusedBorder: BuildBorder(color: color)),);
  }

  OutlineInputBorder  BuildBorder({color}) {
    return OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide:  BorderSide(color: color ?? Colors.white));
  }

}