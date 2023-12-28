import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';

import '../../constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel noteModel) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(noteModel);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
