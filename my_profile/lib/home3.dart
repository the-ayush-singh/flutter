import 'package:flutter/material.dart';
import 'package:statusbar/statusbar.dart'; //Used for importing status bar color class.

MyProfile() {
  var url =
      'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/ayush.jpg';
  var logo =
      'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/asbishen.jpeg';

  StatusBar.color(
      Colors.blue); //It will change the status bar color. #imported externally
  var mybody = Center(
    child: Container(
      height: 300,
      width: 300,

      // color: Colors.red, ==>Can't use color: and boxdecoration simulatneousaly
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'Hello Everyone',
            // textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            ' This is Ayush Singh ',
            // textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
          Text(
            'Chacha Vidhayak hain Humare',
            // textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          // Image.network(url),
        ],
      ),

      decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            21,
          ),
          border: Border.all(
            width: 2,
            color: Colors.red,
          )),
    ),
  );

  var myhome = Scaffold(
    appBar: AppBar(
      title: Text('2nd Sasta App'), //It will display the app on the app
      leading: Image.network(logo),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.fingerprint), onPressed: notifications),
      ],
      backgroundColor: Colors.green,
    ),
    body: mybody,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}

notifications() {
  print('Click mat kar Be....');
}
