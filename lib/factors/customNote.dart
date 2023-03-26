import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/cubits/cubit/cubit/create_note_cubit.dart';
import 'package:notes_app/pages/edit_note_page.dart';

class customNote extends StatelessWidget {
  const customNote({
    Key? key,
    required this.data,
  }) : super(key: key);
  final note_model data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Edit_Note_Page.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 0),
        child: Container(
          padding: const EdgeInsets.only(top: 16, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(data.color)),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(data.title,
                    style: const TextStyle(fontSize: 30, color: Colors.black)),
              ),
              subtitle: Text(
                data.subtitle,
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
              trailing: IconButton(
                  onPressed: ()  {
                    try {
                       data.delete();
                      BlocProvider.of<CreateNoteCubit>(context).getNotes();
                      
                        
                      
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'this note was deleted before , refresh your page')));
                    }
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 260),
              child: Text(
                data.date,
                style: TextStyle(color: Colors.black.withOpacity(0.3)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
