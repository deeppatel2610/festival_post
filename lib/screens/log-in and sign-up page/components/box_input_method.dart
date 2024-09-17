import 'package:flutter/material.dart';

import '../../../utils/color.dart';

Widget boxInputMethod({
  required String text,
  required String hint,
  required controller,
}) {
  return TextFormField(
    validator: (value) {
      return value!.isEmpty ? 'This Detail is Important !' : null;
    },
    style: TextStyle(color: textColor),
    controller: controller,
    decoration: InputDecoration(
      labelText: text,
      hintText: hint,
      hintStyle: TextStyle(
        color: bgColor,
        fontWeight: FontWeight.w500,
      ),
      labelStyle: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: secondary,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: buttonColor,
        ),
      ),
    ),
  );
}
