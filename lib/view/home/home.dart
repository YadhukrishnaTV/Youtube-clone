// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:youtube/utils/imageconst/database/database.dart';
import 'package:youtube/view/notification/notification.dart';
import 'package:youtube/view/profile/profile.dart';

import 'package:youtube/view/search/search.dart';
import 'package:youtube/view/videoplay/videoplay.dart';


class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _nav_screenState();


}

class _nav_screenState extends State<Home> {
  final List<String> mylist = [
    "laptop",
    "mobiles",
    "games",
    "movies",
    "music",
    "Asus",
    "samsung",
    "gta5",
    "review",
    "Bmw",
    "bikes",
    "music",
    "laptop",
    "mobiles",
    "games",
    "movies",
    "music"
  ];




  List<String>videolinks=[""];



  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
          // leadingWidth: 100.0,
          // leading: Padding(
          //   padding: const EdgeInsets.only(left: 12.0),
          title: Container(
            height: 35,
            width: 100,
            child: Image.asset("asset/image/yt_logo_rgb_dark.png"),
          ),

          // ),
          actions: [ InkWell(
              onTap: () {
                showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Connect to a device'),
                  content: Text("No device found"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
              },
              child:  Icon(Icons.cast),
            ),
           
            SizedBox(
              width: 10,
            ),
            Stack(
              children: [ 
                Center(
                  child:InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ));
              },
              child:  Icon(Icons.notifications_outlined)
            ),
                  ),
                Positioned(
                  top: 6,
                  right: 0,
                  
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Center(
                      child: Text(
                        "5",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ));
              },
              child: Icon(Icons.search_outlined),
            ),
            IconButton(
              icon: CircleAvatar(
                radius: 20,
                foregroundImage: NetworkImage(
                    "https://www.bing.com/th?id=OIP.kQb9khtxOxwErol-KhGysgHaHs&w=150&h=156&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
              ),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>profile()));
              },
            ),
          ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myimage.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 65, 65, 64),
                          ),
                          child: Center(
                            child: Text(mylist[index]),
                          ),
                        ),
                      ),
                    )),
          ),
          // videoscreen()
          Expanded(
            child: ListView.builder(
              itemCount: myimage.length,
              itemBuilder: (context, index) => Column(children: [
                Container(
                  height: 250,
                  child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => videoplay(),
                    ));
              },
              child: Image.network(myimage[index]),
            ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(myimage[index]),
                  ),
                  title: Text(
                    "my youtube video",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "hp laptop review  14.8k    10 hours ago",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}