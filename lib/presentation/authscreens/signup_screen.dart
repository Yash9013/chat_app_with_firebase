import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .sizeOf(context)
        .height;
    final width = MediaQuery
        .sizeOf(context)
        .width;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
        Container(
        alignment: Alignment.topLeft,
        height: height / 4.2,
        width: width,
        padding: const EdgeInsets.only(top: 5, left: 5),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [authContainerColor1, authContainerColor2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(width, height * 0.11))),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
            size: 18,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: height * 0.05),
        child: Column(
          children: [
        Center(
        child: Text(
        'Sign Up',
          style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: height * 0.025),
        ),
      ),
      Center(
        child: Text(
          'Create a new Account',
          style: TextStyle(
              color: loginAccount,
              fontWeight: FontWeight.w500,
              fontSize: height * 0.018),
        ),
      ),
      Container(
        margin:
        const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(width * 0.011),
          child: Container(
              height: height / 1.7,
              width: width,
              padding: const EdgeInsets.symmetric(
                  vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(width * 0.011)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                'Name',
                style: TextStyle(
                    color: blackColor,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.011,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(width: 1, color: borderColor)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: authContainerColor1,
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.021,
              ),
              Text(
                'Email',
                style: TextStyle(
                    color: blackColor,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.011,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(width: 1, color: borderColor)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: authContainerColor1,
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.021,
              ),
              Text(
                'Password',
                style: TextStyle(
                    color: blackColor,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.011,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(width: 1, color: borderColor)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: authContainerColor1,
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.021,
              ),
              Text(
                'Confirm Password',
                style: TextStyle(
                    color: blackColor,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.011,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(width: 1, color: borderColor)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: authContainerColor1,
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                  child: RichText(
                      text: TextSpan(children: [
                          TextSpan(
                          text: "Already have an Account?",
                          style: TextStyle(
                              color: blackColor,
                              fontSize: height * 0.016)),
                      TextSpan(
                          text: " Login Now!",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.of(context).pop(),
                          style: TextStyle(
                          color: authContainerColor1,
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.016)),
                  ])),
        )
        ],
      ),
    ),
    ),
    ),
    SizedBox(
    height: height * 0.03,
    ),
    Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    width: double.infinity,
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: authContainerColor2,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10))),
    onPressed: () {},
    child: Padding(
    padding: const EdgeInsets.all(10),
    child: Text(
    'SIGN UP',
    style: TextStyle(
    color: whiteColor,
    fontSize: height * 0.018,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    )
    ,
    );
  }
}
