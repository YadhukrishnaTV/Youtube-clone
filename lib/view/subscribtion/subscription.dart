import 'package:flutter/material.dart';
import 'package:youtube/view/notification/notification.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/search/search.dart';


class subscription extends StatelessWidget {
  const subscription({
    super.key,
    // required this.index,
  });

  // final int index;
  @override
  Widget build(BuildContext context) {
    final List<String> mychip = [
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

    final List<String> myvideo = [
      "https://i.pinimg.com/originals/e1/b5/4b/e1b54bc3280ac8e4716f0b6781510e3e.jpg",
      "https://th.bing.com/th/id/OIP.GunHfMoxH69PoxPKpU_w-AHaEK?pid=ImgDet&rs=1",
      "https://th.bing.com/th/id/OIP.-IknI0WladQHmdKdymHSVAHaEK?pid=ImgDet&rs=1",
      "https://i.ytimg.com/vi/kpvKA0vhaT0/maxresdefault.jpg",
      "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
      "https://i.pinimg.com/originals/e1/b5/4b/e1b54bc3280ac8e4716f0b6781510e3e.jpg",
      "https://th.bing.com/th/id/OIP.GunHfMoxH69PoxPKpU_w-AHaEK?pid=ImgDet&rs=1",
      "https://th.bing.com/th/id/OIP.-IknI0WladQHmdKdymHSVAHaEK?pid=ImgDet&rs=1",
      "https://i.ytimg.com/vi/kpvKA0vhaT0/maxresdefault.jpg",
      "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
      "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
      "https://i.ytimg.com/vi/kpvKA0vhaT0/maxresdefault.jpg",
      "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
      "https://i.pinimg.com/originals/e1/b5/4b/e1b54bc3280ac8e4716f0b6781510e3e.jpg"
    ];
    // final List<String> subscribers = [
    //   "https://yt3.ggpht.com/a-/AAuE7mBfVtXPzndxbFb1ZfAHinAIQPNi6bDMwBTROw=s900-mo-c-c0xffffffff-rj-k-no",
    //   "https://yt3.ggpht.com/a/AGF-l7_l810waR8D0HSbgsUnAS8vXhzZ8RwCcafmxw=s900-mo-c-c0xffffffff-rj-k-no",
    //   "https://yt3.ggpht.com/a/AATXAJyZO2q4BS5R9R7wVwQWDBCOVsL4tC8tyLJGww=s900-c-k-c0xffffffff-no-rj-mo",
    //   "https://media.glassdoor.com/sqll/7369124/brototype-squarelogo-1659515653879.png",
    //   "https://logo-marque.com/wp-content/uploads/2020/04/Minecraft-Symbole.jpg",
    //   "https://www.keralatv.in/media/2018/11/Asianet-New-Logo.png",
    //   "https://i.pinimg.com/originals/e0/cc/fb/e0ccfb8b647c54e7c95397a6947488d0.jpg",
    //   "https://abhiramvishnu96.files.wordpress.com/2019/01/csk-01.jpg?w=1024",
    //   "https://mir-s3-cdn-cf.behance.net/project_modules/1400/720994148584345.62d8091adfa76.jpg",
    //   "https://qph.fs.quoracdn.net/main-qimg-2b13cc4c2342b1755b1a0c9e0f67d165",
    //   "https://yt3.ggpht.com/a/AATXAJw4MuERRL9CrPIy58ihbsTtVCQBetb5_ZBbWA=s900-c-k-c0xffffffff-no-rj-mo",
    //   "https://yt3.ggpht.com/a-/AAuE7mDiTOsXQoGoXQIkuuvqIiZTjocq0xyTC6SDtg=s800-mo-c-c0xffffffff-rj-k-no",
    //   "https://i.pinimg.com/564x/36/0a/47/360a4764c19cbdcf4f3b7451383efb77.jpg",
    //   "https://i.pinimg.com/564x/c0/46/c8/c046c8b70c292810459f4bc7a39661c4.jpg"
    // ];

    final List<Map> subscrib = [
      {
        "image":
            "https://yt3.ggpht.com/a-/AAuE7mBfVtXPzndxbFb1ZfAHinAIQPNi6bDMwBTROw=s900-mo-c-c0xffffffff-rj-k-no",
        "name": "Strell"
      },
      {
        "image":
            "https://yt3.ggpht.com/a/AGF-l7_l810waR8D0HSbgsUnAS8vXhzZ8RwCcafmxw=s900-mo-c-c0xffffffff-rj-k-no",
        "name": "Vandi"
      },
      {
        "image":
            "https://yt3.ggpht.com/a/AATXAJyZO2q4BS5R9R7wVwQWDBCOVsL4tC8tyLJGww=s900-c-k-c0xffffffff-no-rj-mo",
        "name": "M4Tech"
      },
      {
        "image":
            "https://media.glassdoor.com/sqll/7369124/brototype-squarelogo-1659515653879.png",
        "name": "Brototype"
      },
      {
        "image":
            "https://logo-marque.com/wp-content/uploads/2020/04/Minecraft-Symbole.jpg",
        "name": "Mincraft"
      },
      {
        "image": "https://www.keralatv.in/media/2018/11/Asianet-New-Logo.png",
        "name": "Asianet"
      },
      {
        "image":
            "https://i.pinimg.com/originals/e0/cc/fb/e0ccfb8b647c54e7c95397a6947488d0.jpg",
        "name": "Karikku"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
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
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: subscrib.length,
              itemBuilder: (context, index) => Container(
                height: 90,
                width: 90,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(subscrib[index]["image"]),
                    // radius: 10,
                    backgroundColor: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 75,
                        ),
                        Text(
                          subscrib[index]["name"],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mychip.length,
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
                            child: Text(mychip[index],
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    )),
          ),
          // videoscreen()
          Expanded(
            child: ListView.builder(
              itemCount: myvideo.length,
              itemBuilder: (context, index) => Column(children: [
                Container(
                  height: 250,
                  child: Image.network(myvideo[index]),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(myvideo[index])),
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
          // ListView.builder(
          //     physics: NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     itemCount: 3,
          //     itemBuilder: (context, index) {Column(children: [],)
          //       child:
          //       Image.network(myvideo[index]);
          //     })
        ],
      ),
    );
  }
}