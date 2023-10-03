import 'package:flutter/material.dart';
import 'package:youtube/view/library/your_movies/your_movies.dart';
import 'package:youtube/view/notification/notification.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/search/search.dart';
class Library extends StatelessWidget {
  const Library({super.key});

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
          actions: [
            InkWell(
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
                  // child: CircleAvatar(
                  child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ));
              },
              child:  Icon(Icons.notifications_outlined)
            ),
                  // ),
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
      // appbar

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "History",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170, top: 10),
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          
                          width: 180,
                          height: 110,
                          child: Image.network("https://th.bing.com/th/id/OIP.clCz5eMVNKOrfVRigSt8RAAAAA?w=304&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),  
                        
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 90),
                          //   child: ListTile(
                          //     title: Text(
                          //       "monsterss//",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //     subtitle: Text(
                          //       "@ykreloaded",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.slideshow_sharp,
                color: Colors.white,
                size: 30,
              ),
              title: Text("Create a Shorts",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(
              leading: Icon(
                Icons.download,
                size: 30,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.check_circle_rounded,
                color: Colors.white,
              ),
              title: Text("Downloads",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              subtitle: Text("5 Videos",
                  style: TextStyle(
                      color: Color.fromARGB(255, 124, 121, 121), fontSize: 13)),
            ),
            InkWell(onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: 
              (context) => movies(),));
            },
              child: ListTile(
                leading: Icon(
                  Icons.local_movies_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  "Your movies",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
            Column(children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Playlists",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  Text(
                    "A-Z",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white,
                  )
                ],
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "New playlist",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Watch Later",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "1,985 unwatched videos",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 115, 114, 114)),
                    )
                  ],
                )
              ])
            ]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image.network("https://th.bing.com/th/id/OIP.clCz5eMVNKOrfVRigSt8RAAAAA?w=304&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    Text(
                      "Malayalam tutorial",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
