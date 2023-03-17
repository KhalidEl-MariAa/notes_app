part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNotefailure extends AddNoteState {
  String error;

  AddNotefailure({required this.error});

}

class AddNoteLoading extends AddNoteState {}


