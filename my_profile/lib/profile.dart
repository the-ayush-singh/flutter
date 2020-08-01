import 'package:flutter/material.dart';
import 'package:statusbar/statusbar.dart';
import 'package:fluttertoast/fluttertoast.dart';

MyProfile() {
  StatusBar.color(Colors.grey);

  mytoast() {
    Fluttertoast.showToast(
      msg: 'Click mat kar be !!!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16,
    );
  }

  var logo =
      'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/asbishen.jpeg';
  var myhome = Scaffold(
    appBar: AppBar(
      title: Text('My Profile'),
      leading: Image.network(logo),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.call), onPressed: mytoast()),
      ],
    ),
    body: mybody,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}

var mybody = Container(
  alignment: Alignment.center,
  height: double.infinity,
  width: double.infinity,
  color: Colors.grey[300],
  margin: EdgeInsets.all(20),
  child: Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      Container(
        height: 200,
        width: 250,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
        ),
        margin: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ayush Singh'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(icon: Icon(Icons.mail), onPressed: mytoast),
                Text('03ayushsingh@gmail.com'),
              ],
            )
          ],
        ),
      ),
      InkWell(
        onTap: notifications,
        child: Container(
          height: 100,
          width: 100,

          // color: Colors.blue, Can't use color abd decoration simulataneousaly
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
            image: DecorationImage(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/ayush.jpg'),
            ),
          ),
        ),
      ),
    ],
  ),
);

notifications() {
  print('Click mat kar Be....');
}

mytoast() {
  Fluttertoast.showToast(
    msg: 'Click mat kar be !!!',
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16,
  );
}
