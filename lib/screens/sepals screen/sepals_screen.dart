import 'dart:async';

import 'package:festival_post/utils/color.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class SepalsScreen extends StatefulWidget {
  const SepalsScreen({super.key});

  @override
  State<SepalsScreen> createState() => _SepalsScreenState();
}

class _SepalsScreenState extends State<SepalsScreen> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.of(context).pushReplacementNamed('/login');
      },
    );
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Stack(
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(logo),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(logo2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
