import 'package:flutter/material.dart';

void main() {
  runApp(MyWebServerApp());
}

String xx;

class MyWebServerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Web Server App'),
          leading: Image.network(logo),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            width: 300,
            height: 200,
            color: Colors.green,
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    onChanged: (value) {
                      // print(value);
                      xx = value;
                    },
                    autofocus: true,
                    cursorColor: Colors.blue,
                    // style: TextStyle(height: 2),
                    decoration: InputDecoration(
                      // icon: Icon(Icons.phone_android),
                      hintText: 'Likh Be',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Card(
                  child: FlatButton(
                    onPressed: () {
                      print(xx);
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var logo =
    'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/my_profile/Images/logo.jpeg';
