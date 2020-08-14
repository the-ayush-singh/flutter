import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyWebServerApp());
}

mydata() async {
  var url = 'http://192.168.18.13/cgi-bin/date.py';
  var r = await http.get(url);
  print(r.body);
}

mydata1() async {
  var url = 'http://192.168.18.13/cgi-bin/cal.py';
  var r = await http.get(url);
  print(r.body);
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
                Center(
                  child: Row(
                    children: [
                      Card(
                        child: FlatButton(
                          onPressed: mydata,
                          child: Text('Date'),
                        ),
                      ),
                      Card(
                        child: FlatButton(
                          onPressed: mydata1,
                          child: Text('Cal'),
                        ),
                      ),
                    ],
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
