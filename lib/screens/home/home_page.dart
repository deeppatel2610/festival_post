import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:festival_post/utils/global.dart';
import 'package:flutter/material.dart';
import '../../utils/all list/icon_list.dart';
import '../../utils/color.dart';
import '../profile page/profile_page.dart';
import 'components/Main_column_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: bgColor,
      body: screens[navigationIndex],
      bottomNavigationBar: navigationBarMethod(
        context: context,
      ),
    );
  }

  Widget navigationBarMethod({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: CurvedNavigationBar(
        onTap: (value) {
          setState(() {
            navigationIndex = value;
          });
        },
        items: iconList,
        backgroundColor: Colors.transparent,
        color: buttonColor,
        animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }

  List<Widget> screens = [
    const MainColumnWidget(),
    const ProfilePage(),
  ];
}
