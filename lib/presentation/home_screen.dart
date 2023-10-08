import 'package:chatappwithfirebase/constants/app_colors.dart';
import 'package:chatappwithfirebase/presentation/chat_screen.dart';
import 'package:flutter/material.dart';

import '../model/user_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserModel> userList = [
    UserModel(
        username: 'Yash Katariya', message: 'How are you ?', time: '04:30 PM'),
    UserModel(
        username: 'Bhargav Dubey', message: 'I am good.', time: '01:03 AM'),
    UserModel(
        username: 'Rajath Shetty', message: 'Kesa he bhai', time: '07:30 PM'),
    UserModel(
        username: 'Lokesh Patil', message: 'Iphone dekh', time: '12:30 AM'),
    UserModel(
        username: 'Umesh Rajput',
        message: 'Me bhi lunga iphone 13',
        time: '09:25 AM'),
    UserModel(username: 'Sonchi', message: 'Okay.', time: '04:30 PM'),
    UserModel(
        username: 'Nilesh Bhai', message: 'konto li ros', time: '01:45 PM'),
    UserModel(username: 'Aman Patel', message: 'Avano aje ?', time: '08:52 AM'),
    UserModel(username: 'Pinakin', message: 'Kya cho', time: '04:30 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: chatBgColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chats',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: chatTextColor,
                        fontSize: height * 0.023),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: searchIconBgColor),
                    child: Icon(
                      Icons.search_outlined,
                      color: chatTextColor,
                      size: height * 0.03,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: width,
                padding: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ChatScreen(userName: userList[index].username),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) =>
                                FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                      ));
                    },
                    child: chatWidget(userModel: userList[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  chatWidget({required UserModel userModel}) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return ListTile(
      isThreeLine: true,
      dense: true,
      horizontalTitleGap: width * 0.03,
      leading: CircleAvatar(
        backgroundColor: black45Color,
        radius: width * 0.06,
        child: Text(
          userModel.username.substring(0, 1),
          style: const TextStyle(color: whiteColor),
        ),
      ),
      title: Text(
        userModel.username,
        style: TextStyle(
            fontSize: height * 0.018,
            color: blackColor,
            fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        userModel.message,
        style: TextStyle(
            fontSize: height * 0.016,
            color: black45Color,
            fontWeight: FontWeight.w500),
      ),
      trailing: Text(
        userModel.time,
        style: TextStyle(
            fontSize: height * 0.015,
            color: black45Color,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
