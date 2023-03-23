import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/factors/custom_button.dart';
import 'package:notes_app/factors/custom_text_field.dart';

class Notes_Add extends StatefulWidget {
  const Notes_Add({super.key});

  @override
  State<Notes_Add> createState() => _Notes_AddState();
}

class _Notes_AddState extends State<Notes_Add> {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding:  EdgeInsets.only(top: 50, left: 20, right: 20,bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('The Note is added succesfully'),
                  duration:  Duration(seconds: 5)));
              Navigator.pop(context);
            }
            if (state is AddNotefailure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('There is an error : ${state.error}'),
                  duration: const Duration(seconds: 5)));
              Navigator.pop(context);
            }
            // TODO: implement listener
          },
          builder: (context, state) {
            return AbsorbPointer(absorbing: state is AddNoteLoading? true : false,
            child: const SingleChildScrollView(child: show_bottom_body()));
          },
        ),
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
  GlobalKey<FormState> mykey = GlobalKey();
  AutovalidateMode validator = AutovalidateMode.always;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: mykey,
      autovalidateMode: validator,
      child: Column(
        children: [
          CustomTextField(
            hintext: 'Title',
            onsaved: (value) {
              title = value;
            },
          ),
        const  SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintext: 'Content',
            MaxLines: 5,
            onsaved: (value) {
              content = value;
            },
          ),
         const SizedBox(
            height: 50,
          ),
          MyButton(
            onPressed: (() {
              if (mykey.currentState!.validate()) {
                mykey.currentState!.save();
                var notemodel = note_model(
                    title: title!,
                    subtitle: content!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
              } else {
                validator = AutovalidateMode.always;
                setState(() {});
              }
            }),
          ),
         const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
