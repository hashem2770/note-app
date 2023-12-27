import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          SizedBox(height: 22,),
          CustomTextField(hint: 'Title',),
          SizedBox(height: 18,),
          CustomTextField(hint: 'Content',maxLine: 5,),
        ],
      ),
    );
  }
}
