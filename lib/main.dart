import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/constants/constant.dart';

import 'package:notes_app/cubits/cubit/bloc_obs.dart';
import 'package:notes_app/cubits/cubit/cubit/create_note_cubit.dart';
import 'package:notes_app/pages/edit_note_page.dart';
import 'package:notes_app/pages/main_page.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = simpleBlocObserver();
  Hive.registerAdapter(notemodelAdapter());
  await Hive.openBox<note_model>(boxname);

  runApp(const notes_app());
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateNoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          main_page.main_id: (context) =>  main_page(),
          Edit_Note_Page.id: (context) => const Edit_Note_Page()
        },
        initialRoute: main_page.main_id,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      ),
    );
  }
}
