
import 'package:flutter/material.dart';
import 'package:notes_app/factors/custom_text_field.dart';

class Edit_Note extends StatelessWidget {
  const Edit_Note({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        
        children: [CustomTextField(hintext: 'Title'),SizedBox(height: 25,),CustomTextField(hintext: 'Content',MaxLines: 5,)],
      ),
    );
  }
}