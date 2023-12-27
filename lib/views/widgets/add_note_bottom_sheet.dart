import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 18,
            ),
            CustomTextField(
              hint: 'Content',
              maxLine: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
