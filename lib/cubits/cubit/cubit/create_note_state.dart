part of 'create_note_cubit.dart';

@immutable
abstract class CreateNoteState {}

class CreateNoteInitial extends CreateNoteState {}

class CreateNoteLoading extends CreateNoteState {}

class CreateNoteSucess extends CreateNoteState {
final List<note_model> notes;

  CreateNoteSucess(this.notes);

}

class CreateNoteFailure extends CreateNoteState {
  CreateNoteFailure({required this.error});
 final String error;
}

