

import 'package:flutter/material.dart';
import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/factors/custom_button.dart';
import 'package:notes_app/factors/custom_text_field.dart';

class Notes_Add extends StatelessWidget {
  const Notes_Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:50,left: 20,right: 20),
      child: SingleChildScrollView(
        child: show_bottom_body(),
      ),
    );
  }
}

class show_bottom_body extends StatefulWidget {
  const show_bottom_body({
    Key? key,
  }) : super(key: key);

  @override
  State<show_bottom_body> createState() => _show_bottom_bodyState();
   

  
}

class _show_bottom_bodyState extends State<show_bottom_body> {
  
  String? title;
  String? content;
  GlobalKey <FormState> mykey=GlobalKey();
  AutovalidateMode validator=AutovalidateMode.always;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: mykey,
      autovalidateMode: validator,

      child: Column(children: [CustomTextField(hintext: 'Title',onsaved: (value) {
        title=value;
        
      },),
      SizedBox(height: 20,),
       CustomTextField(hintext: 'Content',MaxLines: 5,onsaved: (value) {
        content=value;
       },)
       ,SizedBox(height: 50,),
       MyButton(onPressed: (() {
         if(mykey.currentState!.validate()){
          mykey.currentState!.save();

         }
         else{
          validator=AutovalidateMode.always;
          setState(() {
            
          });
         }
       }),),
       SizedBox(height: 150,)],),
    );
  }
}

