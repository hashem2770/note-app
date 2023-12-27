import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context,i)=>const SizedBox(height: 8,),
      itemBuilder: (context, index) {
        return const NoteItem(
            title: 'Flutter Tips',
            subTitle: 'build your career with Hashem Hassen');
      }, itemCount: 6,);
  }
}
