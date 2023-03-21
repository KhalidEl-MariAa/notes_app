part of 'create_note_cubit.dart';

@immutable
abstract class CreateNoteState {}

class CreateNoteInitial extends CreateNoteState {}

class CreateNoteLoading extends CreateNoteState {}

class CreateNoteSucess extends CreateNoteState {}

class CreateNoteFailure extends CreateNoteState {}

