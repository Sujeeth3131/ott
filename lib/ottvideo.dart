import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ottv extends StatefulWidget {
  // const ottv({super.key});

  @override
  State<ottv> createState() => _ottvState();
}

class _ottvState extends State<ottv> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      //leading: Icon(Icons.arrow_back_ios_new),
      title: Text('Video'),
    ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: 400,
            child: FlickVideoPlayer(
                flickManager: flickManager


            ),),
          Text('Ben 10'),
          Text('The Filth'),
          Text('S1 E1.10 Apr.U/A 7+'),
          Text(
              'Ben is tasked with cleaning the Rusk Bucket.But When he is tricked into letting the villiainous and vile Fly Guys steal it,he must chase them down before they create an unstoppable maggot monstoer with sights firmly set on destroying Las Vegas'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.add,color: Colors.blueAccent,),
                      Text('Watchlist'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.share_sharp,color: Colors.blueAccent,),
                      Text('Share'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}
