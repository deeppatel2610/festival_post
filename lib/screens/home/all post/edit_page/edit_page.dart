import 'dart:io';
import 'dart:ui';

import 'package:festival_post/screens/home/components/app_bar_method.dart';
import 'package:festival_post/screens/log-in%20and%20sign-up%20page/components/box_input_method.dart';

import 'package:festival_post/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

import '../../../../utils/global.dart';
import 'components/post_container.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  GlobalKey imgKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBarMethod(
        isList: true,
        isRemove: false,
        context: context,
        isIcon: true,
        text: 'Post Edit',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: secondary,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: postContainerMethod(),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        XFile? image = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          imageFile = File(image!.path);
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 4,
                                blurRadius: 4,
                              )
                            ],
                            image: DecorationImage(
                              image: (imageFile != null)
                                  ? FileImage(imageFile!)
                                  : AssetImage(tempLogo),
                            ),
                            shape: BoxShape.circle),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: secondary,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: boxInputMethod(
                            text: 'Email',
                            hint: 'name123@email.com',
                            controller: txtUserEmail,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: IconButton.filled(
                            style: ButtonStyle(
                              fixedSize: const WidgetStatePropertyAll(
                                Size(60, 60),
                              ),
                              backgroundColor:
                                  WidgetStatePropertyAll(buttonColor),
                            ),
                            color: bgColor,
                            onPressed: () {
                              setState(() {
                                email = txtUserEmail.text;
                              });
                            },
                            icon: Icon(
                              Icons.check,
                              color: primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: boxInputMethod(
                            text: 'Number',
                            hint: 'Number',
                            controller: txtNumber,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: IconButton.filled(
                            style: ButtonStyle(
                              fixedSize: const WidgetStatePropertyAll(
                                Size(60, 60),
                              ),
                              backgroundColor:
                                  WidgetStatePropertyAll(buttonColor),
                            ),
                            color: bgColor,
                            onPressed: () {
                              setState(() {
                                number = txtNumber.text;
                              });
                            },
                            icon: Icon(
                              Icons.check,
                              color: primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton.filled(
                    style: ButtonStyle(
                      fixedSize: const WidgetStatePropertyAll(
                        Size(60, 60),
                      ),
                      backgroundColor: WidgetStatePropertyAll(buttonColor),
                    ),
                    color: bgColor,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                              color: bgColor,
                              borderRadius: BorderRadius.circular(15)),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'Logo position',
                                  style:
                                      TextStyle(color: textColor, fontSize: 20),
                                ),
                                Divider(
                                  color: secondary,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionLogo = northWestLogo;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.north_west,
                                        color: primary,
                                      ),
                                    ),
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionLogo = northLogo;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.north,
                                        color: primary,
                                      ),
                                    ),
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionLogo = northEastLogo;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.north_east,
                                        color: primary,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionLogo = southWestLogo;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.south_west,
                                        color: primary,
                                      ),
                                    ),
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionLogo = southLogo;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.south,
                                        color: primary,
                                      ),
                                    ),
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionLogo = southEastLogo;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.south_east,
                                        color: primary,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: secondary,
                                ),

                                ///
                                Text(
                                  'Information position',
                                  style:
                                      TextStyle(color: textColor, fontSize: 20),
                                ),
                                Divider(
                                  color: secondary,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionInfomation =
                                              northWestInfomation;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.north_west,
                                        color: primary,
                                      ),
                                    ),
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionInfomation =
                                              northInfomation;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.north,
                                        color: primary,
                                      ),
                                    ),
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionInfomation =
                                              northEastInfomation;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.north_east,
                                        color: primary,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionInfomation =
                                              southWestInfomation;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.south_west,
                                        color: primary,
                                      ),
                                    ),
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionInfomation =
                                              southInfomation;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.south,
                                        color: primary,
                                      ),
                                    ),
                                    IconButton.filled(
                                      style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                          Size(60, 60),
                                        ),
                                        backgroundColor:
                                            WidgetStatePropertyAll(buttonColor),
                                      ),
                                      color: bgColor,
                                      onPressed: () {
                                        setState(() {
                                          defaultPositionInfomation =
                                              southEastInfomation;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.south_east,
                                        color: primary,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: secondary,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.move_to_inbox_outlined,
                      color: primary,
                    ),
                  ),
                  IconButton.filled(
                    style: ButtonStyle(
                      fixedSize: const WidgetStatePropertyAll(
                        Size(60, 60),
                      ),
                      backgroundColor: WidgetStatePropertyAll(buttonColor),
                    ),
                    color: bgColor,
                    onPressed: () async {
                      RenderRepaintBoundary boundary = imgKey.currentContext!
                          .findRenderObject() as RenderRepaintBoundary;
                      final image = await boundary.toImage();
                      final byteData =
                          await image.toByteData(format: ImageByteFormat.png);
                      final imgIntList = byteData!.buffer.asUint8List();
                      await ImageGallerySaver.saveImage(imgIntList);
                    },
                    icon: Icon(
                      Icons.save,
                      color: primary,
                    ),
                  ),
                  IconButton.filled(
                    style: ButtonStyle(
                      fixedSize: const WidgetStatePropertyAll(
                        Size(60, 60),
                      ),
                      backgroundColor: WidgetStatePropertyAll(buttonColor),
                    ),
                    color: bgColor,
                    onPressed: () {
                      RenderRepaintBoundary boundary = imgKey.currentContext!
                          .findRenderObject() as RenderRepaintBoundary;
                      ShareFilesAndScreenshotWidgets().shareScreenshot(
                          imgKey, 500, 'image', 'festival.png', 'image/png');
                    },
                    icon: Icon(
                      Icons.share,
                      color: primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  RepaintBoundary postContainerMethod() {
    return RepaintBoundary(
      key: imgKey,
      child: postContainer(),
    );
  }
}
