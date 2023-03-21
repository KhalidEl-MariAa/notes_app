import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';

class MyButton extends StatelessWidget {
  MyButton({this.onPressed});
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: onPressed,
          child: state is AddNoteLoading? SizedBox(child: CircularProgressIndicator(color: Colors.black,),height: 24,width: 24,) : 
          Text(
            'Add',
            style: TextStyle(color: Colors.black),)
          ,
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(360, 50), backgroundColor: color),
        );
      },
    );
  }
}

