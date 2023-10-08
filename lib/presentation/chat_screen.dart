import 'package:chatappwithfirebase/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String userName;

  const ChatScreen({Key? key, required this.userName}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String userName = '';

  @override
  void initState() {
    userName = widget.userName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: chatBgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: chatBgColor,
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: chatTextColor,
                size: 18,
              ),
              Text(
                userName,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: height * 0.021,
                    color: chatTextColor),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
