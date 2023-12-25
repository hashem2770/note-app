import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: const [
            CustomAppBar(),
            NoteItem(
                title: 'Flutter Tips',
                subTitle: 'build your career with Hashem Hassen'),
          ],
        ),
      ),
    );
  }
}
