import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/global.dart';
import 'components/box_input_method.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 640,
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
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Text(
                        'Sign Up',
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
                        text: 'Name',
                        hint: "name",
                        controller: txtName,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      boxInputMethod(
                        text: 'Phone',
                        hint: 'phone',
                        controller: txtPhone,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      boxInputMethod(
                        text: 'Email',
                        hint: 'email',
                        controller: txtEmail,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      boxInputMethod(
                        text: 'Username',
                        hint: "name_123",
                        controller: txtUsernameForSignUp,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      boxInputMethod(
                        text: 'Password',
                        hint: 'password',
                        controller: txtPasswordForSignUp,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).pushReplacementNamed('/home');
                          }
                        },
                        child: Container(
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
                            'Sign Up',
                            style: TextStyle(
                              color: primary,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Or Login Using',
                        style: TextStyle(color: textColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        },
                        child: const Text('LOG IN'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
