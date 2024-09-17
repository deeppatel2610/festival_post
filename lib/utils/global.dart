import 'dart:io';

import 'package:festival_post/model%20class/model_class.dart';
import 'package:festival_post/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

import 'all list/ganesh_chaturthi_posts.dart';
import 'all list/indian_national_festivals.dart';
import 'all list/upcoming_indian_festivals_list.dart';

// img var
String banner = 'assets/img/banner.jpg';
String logo = 'assets/img/logo.png';
String logo2 = 'assets/img/logo2.png';
String facebook = 'assets/img/Facebook.png';
String google = 'assets/img/google.png';
String twitter = 'assets/img/twitter.jpeg';
String profile = 'assets/img/profile.png';
String tempLogo = 'assets/img/temp logo.png';

// Text Field var
TextEditingController txtName = TextEditingController(text: 'Deep');
TextEditingController txtPhone = TextEditingController(text: '6353614861');
TextEditingController txtEmail =
    TextEditingController(text: 'deeppatel100267@gmail');
TextEditingController txtUsernameForSignUp =
    TextEditingController(text: 'deep1002p');
TextEditingController txtPasswordForSignUp =
    TextEditingController(text: '000000');
TextEditingController txtUsernameForLogin = TextEditingController();
TextEditingController txtPasswordForLogin = TextEditingController();

//post View var
List viewList = [];
String editImg = '';
Color userTextColor = buttonColor;
String title = '';
String selectList = '';
int tempIndex = 0;
List<Model> ganeshJiPostList =
    ganeshChaturthiList.map((e) => Model.fromMap(e)).toList();
List<Model> festivalsList = festivals.map((e) => Model.fromMap(e)).toList();
List<Model> indianNationalFestivalsList =
    indianNationalFestivals.map((e) => Model.fromMap(e)).toList();

// navigation var
int navigationIndex = 0;

// edit page var
TextEditingController txtUserEmail = TextEditingController();
String email = 'name123@email.com';
TextEditingController txtNumber = TextEditingController();
String number = 'Number';

// img picker
ImagePicker imagePicker = ImagePicker();
File? imageFile;

// position var
var defaultPositionLogo = Alignment.topLeft;
var northWestLogo = Alignment.topLeft;
var northLogo = Alignment.topCenter;
var northEastLogo = Alignment.topRight;
var southWestLogo = Alignment.bottomLeft;
var southLogo = Alignment.bottomCenter;
var southEastLogo = Alignment.bottomRight;

var defaultPositionInfomation = Alignment.bottomCenter;
var northWestInfomation = Alignment.topLeft;
var northInfomation = Alignment.topCenter;
var northEastInfomation = Alignment.topRight;
var southWestInfomation = Alignment.bottomLeft;
var southInfomation = Alignment.bottomCenter;
var southEastInfomation = Alignment.bottomRight;
