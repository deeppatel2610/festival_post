import 'package:festival_post/utils/global.dart';
import 'package:flutter/material.dart';

import '../../../utils/color.dart';

Column rowPostMethod({
  required String heading,
  required bool isDaysAndPost,
  required String navigator,
  required BuildContext context,
  required List postList,
}) {
  return Column(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Text(
              heading,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            isDaysAndPost
                ?  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '10',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ' Days Posts',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
                : const SizedBox(
                    height: 0,
                    width: 0,
                  ),
            const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                // title = heading;
                // Navigator.of(context).pushNamed(navigator);
              },
              child: Container(
                height: 36,
                width: 70,
                decoration: BoxDecoration(
                  color: buttonColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                child: Text(
                  'See All',
                  style: TextStyle(color: bgColor),
                ),
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              postList.length,
              (index) => Card(
                child: GestureDetector(
                  onTap: () {
                    viewList.add(postList);
                    selectList = postList[index].img;
                    title = heading;
                    Navigator.of(context).pushNamed(navigator);
                  },
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          postList[index].img,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}
