import 'package:flutter/material.dart';

class create extends StatelessWidget {
  const create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
             context: context,shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0)
             ) ,
             ),
             builder: (context) {
               return Container(
                height: 200,
                color: Color.fromARGB(255, 239, 30, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.explore),
                      title: Text("Create A Shorts"),

                    ),
                    ListTile(
                      leading: Icon(Icons.explore),
                      title: Text("Create A Shorts"),

                    ),
                    ListTile(
                      leading: Icon(Icons.explore),
                      title: Text("Create A Shorts"),

                    ),
                  ],
                ),
               );
             },
              
            );
          },
          child: Text("Login")),
    ));
  }
}