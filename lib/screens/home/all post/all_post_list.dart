import 'package:festival_post/screens/home/components/app_bar_method.dart';
import 'package:festival_post/utils/color.dart';
import 'package:festival_post/utils/global.dart';
import 'package:flutter/material.dart';

class AllPostList extends StatefulWidget {
  const AllPostList({super.key});

  @override
  State<AllPostList> createState() => _AllPostListState();
}

class _AllPostListState extends State<AllPostList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBarMethod(
        isRemove: true,
        isList: true,
        isIcon: true,
        context: context,
        text: title,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: secondary,
                image: DecorationImage(
                    image: AssetImage(selectList), fit: BoxFit.cover),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              color: secondary,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: viewList[0].length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                // itemCount: ,
                itemBuilder: (context, index) => Card(
                  elevation: 7,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectList = viewList[0][index].img;
                        tempIndex = index;
                      });
                    },
                    child: Container(
                      width: 350,
                      height: 350,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(viewList[0][index].img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: buttonColor,
        child: Icon(Icons.edit, color: primary),
        onPressed: () {
          editImg = viewList[0][tempIndex].img;
          userTextColor = viewList[0][tempIndex].color;
          Navigator.of(context).pushNamed('/edit');
        },
      ),
    );
  }
}
