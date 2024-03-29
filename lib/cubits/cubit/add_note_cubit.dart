import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_models.dart';
import 'package:notes_app/constants/constant.dart';


part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote (note_model modelNote)async {
    emit(AddNoteLoading());
    
    try{
    var DataBox =Hive.box<note_model>(boxname);
     await DataBox.add(modelNote);
     emit(AddNoteSuccess());
    }
    catch (e){
      emit(AddNotefailure(error: e.toString()));
   
    }

  }
}
