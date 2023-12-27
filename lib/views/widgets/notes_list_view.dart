import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);
  final colors=const [
    Colors.amber,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.greenAccent,
    Colors.blue,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        separatorBuilder: (context,i)=>const SizedBox(height: 8,),
        itemBuilder: (context, index) {
          return  NoteItem(
              title: 'Flutter Tips',
              subTitle: 'build your career with Hashem Hassen',
          color: colors[index],
          );
        }, itemCount: 5,),
    );
  }
}
