import 'package:flutter/material.dart';
import '../model/helper/saved_tags.dart';
import 'package:youtube_player/youtube_player.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SavedTags(),
        YoutubePlayer(
          context: context,
          source: "UoD8G6X0y00",
          quality: YoutubeQuality.HD,
          // callbackController is (optional).
          // use it to control player on your own.
          callbackController: (controller) {
            // _videoController = controller;
          },
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 15.0),
          child: YoutubePlayer(
            context: context,
            source: "TxbE79-1OSI",
            quality: YoutubeQuality.HD,
            // callbackController is (optional).
            // use it to control player on your own.
            callbackController: (controller) {
              // _videoController = controller;
            },
          ),
        )
      ],
    );
  }
}
