import 'package:festival_post/screens/home/components/row_post_method.dart';
import 'package:festival_post/utils/color.dart';
import 'package:festival_post/utils/global.dart';
import 'package:flutter/material.dart';

import 'app_bar_method.dart';
import 'banner_img_method.dart';

class MainColumnWidget extends StatelessWidget {
  const MainColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        isList: false,
        isRemove: false,
        context: context,
        isIcon: false,
        text: 'Festival Post',
      ),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              bannerImgMethod(),
              const SizedBox(
                height: 10,
              ),
              rowPostMethod(
                heading: 'Ganesh Chaturthi',
                isDaysAndPost: true,
                context: context,
                navigator: '/postList',
                postList: ganeshJiPostList,
              ),
              Divider(
                color: secondary,
              ),
              const SizedBox(
                height: 10,
              ),
              rowPostMethod(
                heading: 'Upcoming Festival',
                isDaysAndPost: false,
                context: context,
                navigator: '/postList',
                postList: festivalsList,
              ),
              Divider(
                color: secondary,
              ),
              const SizedBox(
                height: 10,
              ),
              rowPostMethod(
                heading: 'Upcoming National Festival',
                isDaysAndPost: false,
                context: context,
                navigator: '/postList',
                postList: indianNationalFestivalsList,
              ),
              Divider(
                color: secondary,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
