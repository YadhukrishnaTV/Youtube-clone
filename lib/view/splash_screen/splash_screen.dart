import 'package:flutter/material.dart';

import 'package:youtube/utils/imageconst/img_const.dart';
import 'package:youtube/view/bottom_screen/bottom_screen.dart';


class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => BottomNavScreen()))); //user screen
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 100,
          width: 300,
          child: Image.asset(image.logo),
        ),
      ),
    );
  }
}