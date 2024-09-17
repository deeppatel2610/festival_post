import 'package:festival_post/screens/home/home_page.dart';
import 'package:flutter/cupertino.dart';

import '../screens/home/all post/all_post_list.dart';
import '../screens/home/all post/edit_page/edit_page.dart';
import '../screens/log-in and sign-up page/log_in_page.dart';
import '../screens/log-in and sign-up page/sign_up_page.dart';
import '../screens/sepals screen/sepals_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const SepalsScreen(),
  '/login': (context) => const LogInPage(),
  '/signup': (context) => const SignUpPage(),
  '/home': (context) => const HomePage(),
  '/postList': (context) => const AllPostList(),
  '/edit': (context) => const EditPage(),
};
