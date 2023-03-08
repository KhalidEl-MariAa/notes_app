

import 'package:flutter/material.dart';
import 'package:notes_app/factors/custom_text_field.dart';

class Notes_Add extends StatelessWidget {
  const Notes_Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30,left: 20,right: 20),
      child: Column(children: [CustomTextField()],),
    );
  }
}

