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
    title: Text('Task-1 - By Ayush Singh'),
    leading: Image.network(logo),
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
        height: 50,
        width: 150,
        child: Text(
          'In the memory of SSR',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Text('Namo Namo song from  Kedarnath - From Network'),
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
              assetsAudioPlayer.open(online, showNotification: true);
            },
          ),
          IconButton(
            icon: Icon(Icons.pause),
            onPressed: () {
              assetsAudioPlayer.playOrPause();
            },
          ),
        ],
      ),
      Text('Khariyat song from Chhichhore - From Assets'),
      Container(
        height: 200,
        width: 200,
        child: Card(
            // color: Colors.red,
            child: Image.network(
                'https://a10.gaanacdn.com/images/albums/58/2772458/crop_175x175_1567516167_2772458.jpg'),
            elevation: 8 //It increases the shadow of the card.
            ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              assetsAudioPlayer.open(audio, showNotification: true);
            },
          ),
          IconButton(
            icon: Icon(Icons.pause),
            onPressed: () {
              assetsAudioPlayer.playOrPause();
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

final audio = Audio(
  'assets/Khairiyat.mp3',
  metas: Metas(
    title: 'khairiyat',
    artist: "Arijit Singh",
    album: "SSR's Film Songs",
    image: MetasImage.network(
        'https://a10.gaanacdn.com/images/albums/58/2772458/crop_175x175_1567516167_2772458.jpg'),
  ),
);

final online = Audio.network(
  'https://raw.githubusercontent.com/the-ayush-singh/flutter/master/task1/assets/Namo.mp3',
  metas: Metas(
    title: 'Namo Namo',
    artist: "Amit Trivedi",
    album: "SSR's Film Songs",
    image: MetasImage.asset('assets/index.jpeg'),
  ),
);
