part of 'add_note_cubit.dart';

abstract class AddNoteState extends Equatable {
  const AddNoteState();
}

class AddNoteInitial extends AddNoteState {
  @override
  List<Object> get props => [];
}
class AddNoteLoading extends AddNoteState {
  @override
  List<Object> get props => [];
}
class AddNoteSuccess extends AddNoteState {
  @override
  List<Object> get props => [];
}
class AddNoteFailure extends AddNoteState {
  final String errMessage;

  const AddNoteFailure({required this.errMessage});
  @override
  List<Object> get props => [errMessage];
}