import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> importent = [
      {
        "image":
            "https://i.pinimg.com/564x/73/45/dd/7345ddc6d560fbe3b19a612550eeba9d.jpg",
        "name": "Mr beast uploaded:        new 19 Billion car",
        "cover":
            "https://i.pinimg.com/564x/9c/92/47/9c924733da0c3b8c979f452f77d3a10c.jpg"
      },
      {
        "image":
            "https://i.pinimg.com/564x/c6/90/4d/c6904de267778a2864debb5e4b41d85e.jpg",
        "name": "Kevin uploaded:          sjfsfbaffjffbflB",
        "cover":
            "https://i.pinimg.com/564x/c6/90/4d/c6904de267778a2864debb5e4b41d85e.jpg"
      },
    ];
    final List<Map> today = [
      {
        "image":
            "https://yt3.ggpht.com/a/AATXAJyZO2q4BS5R9R7wVwQWDBCOVsL4tC8tyLJGww=s900-c-k-c0xffffffff-no-rj-mo",
        "name": "M4Tech uploaded:         bchasfjsafgakfbafaKF",
        "cover":
            "https://i.pinimg.com/564x/20/7d/78/207d78b7721792f02921479a7e1088c9.jpg"
      },
      {
        "image":
            "https://i.pinimg.com/564x/58/ca/a7/58caa7962d7eb19ce35cc13183b01c64.jpg",
        "name": "ElonMusk uploaded:    bchvbvbfajbvfassvjka",
        "cover":
            "https://i.pinimg.com/564x/58/ca/a7/58caa7962d7eb19ce35cc13183b01c64.jpg"
      },
      {
        "image":
            "https://i.pinimg.com/564x/c3/2e/e7/c32ee7ddde156694b390295d3cbcdbde.jpg",
        "name": "Unmaranz uploaded:     jcvcbsvhjvasasaskfcccc",
        "cover":
            "https://i.pinimg.com/564x/c3/2e/e7/c32ee7ddde156694b390295d3cbcdbde.jpg"
      },
      {
        "image":
            "https://i.pinimg.com/564x/a6/77/66/a67766a56abf7c0641b2a921cdd2c863.jpg",
        "name": "Behance uploaded:     vbsfvsakvasvkasfjas",
        "cover":
            "https://i.pinimg.com/564x/a6/77/66/a67766a56abf7c0641b2a921cdd2c863.jpg"
      },
      {
        "image":
            "https://i.pinimg.com/564x/b6/7a/a8/b67aa850e831dda9c5784d8db261cfab.jpg",
        "name": "Chukluk uploaded:     fygfyagfafgafaayvfhvf",
        "cover":
            "https://i.pinimg.com/564x/b6/7a/a8/b67aa850e831dda9c5784d8db261cfab.jpg"
      },
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
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
            width: 20,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                    height: 35,
                    width: 45,
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 92, 90, 90),
                        borderRadius: BorderRadius.circular(35)),
                    height: 35,
                    width: 90,
                    child: Center(
                      child: Text(
                        "Mentions",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 300),
                  child: Text(
                    "Importent",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              NetworkImage(importent[index]["image"]),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 70,
                          width: 140,
                          child: Text(importent[index]["name"],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          height: 70,
                          width: 150,
                          child: Image.network(
                            importent[index]["cover"],
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 300),
                  child: Text(
                    "Today",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(today[index]["image"]),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 70,
                          width: 140,
                          child: Text(today[index]["name"],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          height: 70,
                          width: 150,
                          child: Image.network(
                            today[index]["cover"],
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}