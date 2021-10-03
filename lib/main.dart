import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(
            Icons.videocam,
          ),
          title: const Text(
              'タイトル'
          ),
          actions: [
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed:(){
                  // todo
                },
              )
            ),
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed:(){
                  // todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width:60,
                      height: 60,
                      child: Image.network(
                          'https://www.snoopy.co.jp/pntswp/wp-content/uploads/2016/04/thumb_snoopy.jpg'
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),

                    Column(
                      children: [
                        const Text (
                          "Snoopy",
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed:(){
                            // todo
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}