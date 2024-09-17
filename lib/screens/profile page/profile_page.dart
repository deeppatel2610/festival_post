import 'package:festival_post/screens/home/components/app_bar_method.dart';
import 'package:festival_post/utils/color.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        isRemove: false,
        isList: false,
        context: context,
        isIcon: false,
        text: 'Profile',
      ),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(profile),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Text(
                  txtUsernameForSignUp.text,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "-${txtName.text}",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                  ),
                ),
                Divider(
                  color: buttonColor,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                ...List.generate(
                  profileList.length,
                  (index) => profileMethod(index: index),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget profileMethod({required int index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            profileList[index],
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: textColor,
          ),
        ],
      ),
    );
  }
}

List profileList = [
  'Popular',
  'Treading',
  'Today',
  'Favourite',
  'Download',
  'Language',
  'Dark mode',
  'Only Download via Wifi'
];
