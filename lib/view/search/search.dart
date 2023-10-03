import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 15, top: 15),
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.zero)),
                                hintText:
                                    'Search for a show, movie, genre, e.t.c.',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}