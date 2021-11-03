import 'package:flutter/material.dart';
//import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';

class CrossToeTouch extends StatefulWidget {
  const CrossToeTouch({ Key? key }) : super(key: key);

  @override
  _CrossToeTouchState createState() => _CrossToeTouchState();
}

class _CrossToeTouchState extends State<CrossToeTouch> {
//  late VideoPlayerController _video_controller;
//   late Future<void> _initializeVideoPlayerFuture;

  // void initState() {
  //   // Create and store the VideoPlayerController. The VideoPlayerController
  //   // offers several different constructors to play videos from assets, files,
  //   // or the internet.
  //    _video_controller = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
  //    //network(
  //   //   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  //   // );

  //   // Initialize the controller and store the Future for later use.
  //   _initializeVideoPlayerFuture = _video_controller.initialize();

  //   // Use the controller to loop the video.
  //   _video_controller.setLooping(false);

  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // Ensure disposing of the VideoPlayerController to free up resources.
  //   _video_controller.dispose();

  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   height: 100,
      //   width: 100,
      //   child: FutureBuilder(
      //     future: _initializeVideoPlayerFuture,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         // If the VideoPlayerController has finished initialization, use
      //         // the data it provides to limit the aspect ratio of the video.
      //         return AspectRatio(
      //           aspectRatio: _video_controller.value.aspectRatio,
      //           // Use the VideoPlayer widget to display the video.
      //           child: VideoPlayer(_video_controller),
      //         );
      //       } else {
      //         // If the VideoPlayerController is still initializing, show a
      //         // loading spinner.
      //         return const Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       }
      //     },
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Wrap the play or pause in a call to `setState`. This ensures the
      //     // correct icon is shown.
      //     setState(() {
      //       // If the video is playing, pause it.
      //       if (_video_controller.value.isPlaying) {
      //         _video_controller.pause();
      //       } else {
      //         // If the video is paused, play it.
      //         _video_controller.play();
      //       }
      //     });
      //   },
      //   // Display the correct icon depending on the state of the player.
      //   child: Icon(
      //     _video_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ),
    );
    

    
  }
}


