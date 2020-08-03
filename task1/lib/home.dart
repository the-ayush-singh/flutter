import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

MyAssetApp() {
  var UI = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return UI;
}

var myhome = Scaffold(
  appBar: AppBar(
    title: Text('Testing Local Assets'),
    leading: Image.network(logo),
    actions: <Widget>[
      Icon(Icons.folder_open),
    ],
  ),
  body: mybody,
);

var mybody = Container(
  alignment: Alignment.center,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,

    // crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Container(
        height: 200,
        width: 200,
        child: Card(
            // color: Colors.red,
            child: Image.asset('assets/index.jpeg'),
            elevation: 8 //It increases the shadow of the card.
            ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              assetsAudioPlayer.open(Audio('assets/Namo.mp3'));
            },
          ),
          IconButton(
            icon: Icon(Icons.pause),
            onPressed: () {
              assetsAudioPlayer.pause();
            },
          ),
        ],
      ),
    ],
  ),
);

//Netowk Image - Logo
var logo =
    'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/my_profile/Images/logo.jpeg';
final assetsAudioPlayer = AssetsAudioPlayer();
