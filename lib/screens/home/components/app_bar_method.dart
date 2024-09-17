import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/global.dart';

AppBar appBarMethod({
  required BuildContext context,
  required bool isIcon,
  required String text,
  required bool isRemove,
  required bool isList,
}) {
  return AppBar(
    leading: isIcon
        ? IconButton(
            onPressed: () {
              if (isList) {
                if (isRemove) {
                  viewList.removeLast();
                } else {
                  tempIndex = 0;
                }
              }
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: primary,
            ),
          )
        : null,
    title: Text(
      text,
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: primary,
          letterSpacing: 1),
    ),
    backgroundColor: textColor,
  );
}
