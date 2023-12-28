import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLine=1, this.onSaved}) : super(key: key);
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty??true){
          return ' Field is required';
        }
        return null;
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,

        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color:color?? Colors.white
      )
    );
  }
}
