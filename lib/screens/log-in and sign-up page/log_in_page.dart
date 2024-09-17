import 'package:festival_post/utils/color.dart';
import 'package:festival_post/utils/global.dart';
import 'package:flutter/material.dart';

import 'components/box_input_method.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 550,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 5,
                )
              ],
              color: bgColor,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    boxInputMethod(
                      text: 'Username',
                      hint: 'Username,email or phone',
                      controller: txtUsernameForLogin,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    boxInputMethod(
                      text: 'Password',
                      hint: 'password',
                      controller: txtPasswordForLogin,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Forgot Password ? ',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 4,
                            blurRadius: 4,
                          )
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: primary,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Or Sign Up Using',
                      style: TextStyle(color: textColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(facebook),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(google),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(twitter),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Or Sign Up Using',
                      style: TextStyle(color: textColor),
                    ),
                    TextButton(
                      onPressed: () {
                        // your code
                        Navigator.of(context).pushReplacementNamed('/signup');
                      },
                      child: const Text('SIGN UP'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
