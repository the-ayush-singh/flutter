import 'package:flutter/material.dart';

MyApp() {
  var url =
      'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/ayush.jpg';

  var mybody = Center(
    child: Container(
      height: 300,
      width: 300,
      // color: Colors.red,
      alignment: Alignment.bottomLeft,
      child: Text(
        "CHacha Vidhayak hain Humare",
        style: TextStyle(color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            11,
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
      leading: Image.network(url),
      // backgroundColor: Colors.green,
    ),
    body: mybody,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
