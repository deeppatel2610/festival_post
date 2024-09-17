import 'package:flutter/material.dart';
import '../../../../../utils/global.dart';

Container postContainer() {
  return Container(
    width: 393,
    height: 393,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(editImg),
      ),
    ),
    child: Stack(
      children: [
        Align(
          alignment: defaultPositionLogo,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    (imageFile != null)
                        ? Image.file(
                            imageFile!,
                            height: 70,
                            width: 70,
                          )
                        : Image.asset(
                            tempLogo,
                            width: 70,
                            height: 70,
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: defaultPositionInfomation,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 9,
                    color: userTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  number,
                  style: TextStyle(
                    fontSize: 9,
                    color: userTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
