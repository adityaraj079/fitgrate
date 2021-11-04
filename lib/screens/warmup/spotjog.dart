import 'package:fitegrate_project/screens/warmup/crossToeTouch.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';

class SpotJog extends StatefulWidget {
  const SpotJog({Key? key}) : super(key: key);

  @override
  _SpotJogState createState() => _SpotJogState();
}

class _SpotJogState extends State<SpotJog> {
  CountDownController _controller = CountDownController();
  int _duration = 30;

  late VideoPlayerController _video_controller;
  late Future<void> _initializeVideoPlayerFuture;

  void initState() {
    setState(() {
      // Create and store the VideoPlayerController. The VideoPlayerController
      // offers several different constructors to play videos from assets, files,
      // or the internet.
      _video_controller = VideoPlayerController.network(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
      //network(
      //   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      // );

      // Initialize the controller and store the Future for later use.
      _initializeVideoPlayerFuture = _video_controller.initialize();

      // Use the controller to loop the video.
      _video_controller.setLooping(false);
    });

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _video_controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text(
          'Warm Up',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "1/11",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Spot Jogging',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),

            CircularCountDownTimer(
              // Countdown duration in Seconds.
              duration: _duration,

              // Countdown initial elapsed Duration in Seconds.
              initialDuration: 0,

              // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
              controller: _controller,

              // Width of the Countdown Widget.
              width: MediaQuery.of(context).size.width / 4,

              // Height of the Countdown Widget.
              height: MediaQuery.of(context).size.height / 4,

              // Ring Color for Countdown Widget.
              ringColor: Colors.grey[300]!,

              // Ring Gradient for Countdown Widget.
              ringGradient: null,

              // Filling Color for Countdown Widget.
              fillColor: Colors.purpleAccent[100]!,

              // Filling Gradient for Countdown Widget.
              fillGradient: null,

              // Background Color for Countdown Widget.
              backgroundColor: Colors.purple[500],

              // Background Gradient for Countdown Widget.
              backgroundGradient: null,

              // Border Thickness of the Countdown Ring.
              strokeWidth: 20.0,

              // Begin and end contours with a flat edge and no extension.
              strokeCap: StrokeCap.round,

              // Text Style for Countdown Text.
              textStyle: TextStyle(
                  fontSize: 33.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),

              // Format for the Countdown Text.
              textFormat: CountdownTextFormat.S,

              // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
              isReverse: false,

              // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
              isReverseAnimation: false,

              // Handles visibility of the Countdown Text.
              isTimerTextShown: true,

              // Handles the timer start.
              autoStart: false,

              // This Callback will execute when the Countdown Starts.
              onStart: () {
                // Here, do whatever you want
                print('Countdown Started');
              },

              // This Callback will execute when the Countdown Ends.
              onComplete: () {
                // Here, do whatever you want
                print('Countdown Ended');
              },
            ),

            // Container(
            //   height: size.height * 0.065,
            //   width: size.width * 0.6,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(22),
            //     color: Colors.black87,
            //   ),
            //   child: TextButton(
            //     onPressed: () {
            //      Navigator.pushNamed(context, 'CrossToeTouch');
            //     },
            //     child: Text(
            //       'Send OTP',
            //       style: TextStyle(color: Colors.orange[300], fontSize: 20),
            //       //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
            //     ),
            //   ),
            // ),
          ],
        ),
        Container(
          height: 100,
          width: 100,
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the VideoPlayerController has finished initialization, use
                // the data it provides to limit the aspect ratio of the video.
                return AspectRatio(
                  aspectRatio: _video_controller.value.aspectRatio,
                  // Use the VideoPlayer widget to display the video.
                  child: VideoPlayer(_video_controller),
                );
              } else {
                // If the VideoPlayerController is still initializing, show a
                // loading spinner.
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            // Wrap the play or pause in a call to `setState`. This ensures the
            // correct icon is shown.
            setState(() {
              // If the video is playing, pause it.
              if (_video_controller.value.isPlaying) {
                _video_controller.pause();
              } else {
                // If the video is paused, play it.
                _video_controller.play();
              }
            });
          },
          // Display the correct icon depending on the state of the player.
          child: Icon(
            _video_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: TextButton(
                  child: Text(
                    'Start',
                    style: TextStyle(color: Colors.black87),
                  ),
                  onPressed: () => _controller.start(),
                  //color: Colors.purple,
                )),

                // _button(title: "Start", onPressed: () => _controller.start()),
                SizedBox(
                  width: 5,
                ),

                Expanded(
                    child: TextButton(
                  child: Text(
                    'Pause',
                    style: TextStyle(color: Colors.black87),
                  ),
                  onPressed: () => _controller.pause(),
                  //color: Colors.purple,
                )),
                //_button(title: "Pause", onPressed: () => _controller.pause()),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),

                Expanded(
                    child: TextButton(
                  child: Text(
                    'Resume',
                    style: TextStyle(color: Colors.black87),
                  ),
                  onPressed: () => _controller.resume(),
                  //color: Colors.purple,
                )),
                //_button(title: "Resume", onPressed: () => _controller.resume()),
                SizedBox(
                  width: 5,
                ),

                Expanded(
                    child: TextButton(
                  child: Text(
                    'Restart',
                    style: TextStyle(color: Colors.black87),
                  ),
                  onPressed: () => _controller.restart(duration: _duration),
                  //color: Colors.purple,
                )),
                // _button(
                //     title: "Restart",
                //     onPressed: () => _controller.restart(duration: _duration))
              ],
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange[400],
          ),
          height: 50,
          width: 50,
          child: IconButton(
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            color: Colors.black87,
            onPressed: () {
              Navigator.pushNamed(context, 'CrossToeTouch');
            },
          ),
        ),
      ]),
    );
  }
}

// _button({required String title, VoidCallback? onPressed}) {
//     return Expanded(
//         child: TextButton(
//           child: Text(
//             title,
//             style: TextStyle(color: Colors.white),
//           ),
//           onPressed: onPressed,
//           //color: Colors.purple,
//         ));
//   }
