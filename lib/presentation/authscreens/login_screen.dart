import 'package:chatappwithfirebase/constants/app_colors.dart';
import 'package:chatappwithfirebase/presentation/authscreens/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            height: height / 4.2,
            width: width,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [authContainerColor1, authContainerColor2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(width, height * 0.11))),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.05),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: height * 0.025),
                  ),
                ),
                Center(
                  child: Text(
                    'Login to your account',
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
                      height: height / 2.3,
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
                            height: height * 0.011,
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: blackColor,
                                  fontSize: height * 0.016,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.045,
                          ),
                          SizedBox(
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
                                  'LOGIN',
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
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                          color: blackColor, fontSize: height * 0.016)),
                  TextSpan(
                      text: " Sign Up Now!",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const SignUpScreen(),
                            transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) =>
                                FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          ));
                        },
                      style: TextStyle(
                          color: authContainerColor1,
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.016)),
                ]))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
