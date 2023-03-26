import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/cubits/cubit/cubit/create_note_cubit.dart';
import 'package:notes_app/factors/add_note_showbottom.dart';

import '../factors/customNote.dart';

class main_page extends StatelessWidget {
   main_page({super.key,});
  static String main_id = 'main page';
  
             

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 51, 51, 51),
        actions: [
          GestureDetector(
              child: Container(
            child: const Icon(
              Icons.search,
              size: 30,
            ),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 46, 46, 46),
                borderRadius: BorderRadius.circular(50)),
            width: 50,
          )),
          const SizedBox(
            width: 10,
          )
        ],
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => const Notes_Add(),
                                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23)));
          },
          child: const Icon(Icons.add)),
      body: BlocBuilder<CreateNoteCubit, CreateNoteState>(
          builder: (context, state) {
            BlocProvider.of<CreateNoteCubit>(context).getNotes();
           List<note_model>? notes = BlocProvider.of<CreateNoteCubit>(context).notes;
          return ListView.builder(
            itemCount: notes!.length ,
          itemBuilder: ((context, index) {

            return  customNote(data: notes[index],);
          }));
        },
      ),
    );
  }
}
