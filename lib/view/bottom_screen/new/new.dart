import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Sheet Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Show the bottom sheet when the button is pressed
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'This is a bottom sheet!',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              );
            },
            child: Text('Show Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}