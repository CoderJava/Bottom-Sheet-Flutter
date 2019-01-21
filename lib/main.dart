import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text("Music"),
                          onTap: () => print("music tapped"),
                        ),
                        ListTile(
                          leading: Icon(Icons.videocam),
                          title: Text("Video"),
                          onTap: () => print("video tapped"),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text("Show Modal Bottom Sheet"),
        ),
      ),
    );
  }
}
