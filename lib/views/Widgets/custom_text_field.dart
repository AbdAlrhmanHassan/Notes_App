import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});
  final String hintText;
  final int maxLines;
  final Function(String)? onChanged;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          enabledBorder: outLineInputBorderM(),
          border: outLineInputBorderM(),
          disabledBorder: outLineInputBorderM(),
          focusedBorder: outLineInputBorderM(color: const Color(0xff63ffda)),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 17, color: Color(0xff63ffda))),
    );
  }
}

OutlineInputBorder outLineInputBorderM({color}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white));
}
