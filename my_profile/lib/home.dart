import 'package:flutter/material.dart';

MyApp() {
  var url =
      'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/ayush.jpg';
  var myEmail = Icon(Icons.email); //icon
  mypress() {
    print(
      //It will display the string on console
      'Ahoy! Something CLicked',
    );
  }

  var sastaHome = Scaffold(
    //This will create a whitw canvas
    appBar: AppBar(
      //it will create an app bar
      title: Text('Sasta App'), //It will display the app on the app
      leading: Image.network(url), //it will fetch the image from the internet
      backgroundColor: Colors.green,
      actions: <Widget>[
        //A list of action Incons/buttons
        Icon(Icons.access_alarms),
        IconButton(
          icon: myEmail,
          color: Colors.yellow,
          onPressed:
              mypress, //removing () because it will automatically call the function.
        )
      ],
    ),
    body: Center(
      //body properties
      child: Image.network(url),
      // child: Text('Haoy'),
    ),
  );

  var design = MaterialApp(
    home: sastaHome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
