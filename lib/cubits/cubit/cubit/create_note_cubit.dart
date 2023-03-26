import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/constants/constant.dart';

part 'create_note_state.dart';

class CreateNoteCubit extends Cubit<CreateNoteState> {
  CreateNoteCubit() : super(CreateNoteInitial());
 List<note_model>? notes;

  void getNotes(){



  var DataBox = Hive.box<note_model>(boxname);
  
   notes =DataBox.values.toList();
  


}
}