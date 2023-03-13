import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({this.onsaved, required this.hintext,this.MaxLines});
 final String hintext;
  final int? MaxLines;
  void Function(String?)? onsaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: ((value) {
        if (value?.isEmpty ?? true){
          return 'Revise your content please';

        }
        else{
          return null;
        }
      }),
    onSaved:onsaved ,
      maxLines: MaxLines,
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