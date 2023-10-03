

import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:youtube/view/create/create.dart';
import 'package:youtube/view/home/home.dart';
import 'package:youtube/view/library/library.dart';
import 'package:youtube/view/shorts/shorts.dart';
import 'package:youtube/view/subscribtion/subscription.dart';



class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List _screens = [
   Home(),
   shorts(index: 1,),
   create(),
   subscription(),
   Library()
    ];
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: [
           BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
             label: "Shorts"),
            BottomNavigationBarItem(
              
              
                icon: Icon(Icons.add_circle_outline),
                activeIcon: Icon(Icons.add),
                label: ""
                ),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined), 
                activeIcon: Icon(Icons.subscriptions),label: "subscriptions"),
            BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library), label: "Library")
          ]),
    );
  }
}

