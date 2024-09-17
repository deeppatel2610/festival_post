import 'package:flutter/material.dart';

import '../../../utils/global.dart';

Container bannerImgMethod() {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 2,
          spreadRadius: 1,
        ),
      ],
      image: DecorationImage(
        image: AssetImage(banner),
        // fit: BoxFit.cover
      ),
    ),
  );
}
