import 'package:flutter/material.dart';
import 'package:flutter_project/check A.dart';
import 'package:flutter_project/timetable%20A.dart';
import 'check B.dart';
import 'check.dart';
import 'package:flutter_project/timetable.dart';

class OtherPageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      home: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/Group 17.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffe2f3ff),
      centerTitle: true,
      title: const Text(
        '강의 계획서',
        style: TextStyle(
          color: Color(0xff0066b3),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(

        icon: Image.asset('assets/images/back-button.png'),

        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => ScheduleA()));

        },
      ),
    );
  }
}
