import 'package:flutter/material.dart';
import 'package:flutter_app/main_model.dart';
import 'package:flutter_app/next_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                'タイトル'
            ),
          ),
          body: Consumer<MainModel>(
              builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.appText,
                  style: TextStyle(
                  fontSize: 30,
                    ),
                ),
                      RaisedButton(
                        child: Text('ボタン'),
                        onPressed: (){
                          model.changeText();
                        },
                      ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}