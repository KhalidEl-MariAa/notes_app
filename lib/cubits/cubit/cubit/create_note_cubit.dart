import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/constants/constant.dart';

part 'create_note_state.dart';

class CreateNoteCubit extends Cubit<CreateNoteState> {
  CreateNoteCubit() : super(CreateNoteInitial());

  void GetNotes(){
emit(CreateNoteLoading());

try {
  var DataBox = Hive.box<note_model>(boxname);
  var notes =DataBox.values.toList();
  emit(CreateNoteSucess(notes));
} catch (e) {
   emit(CreateNoteFailure(error: e.toString())); 
}

  }
}
