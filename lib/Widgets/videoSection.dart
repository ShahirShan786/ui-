import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videosection extends StatefulWidget {
  const Videosection({super.key});

  @override
  State<Videosection> createState() => _VideosectionState();
}

class _VideosectionState extends State<Videosection> {
  YoutubePlayerController _ytcontroller = YoutubePlayerController(
    initialVideoId: 'zknO3GkSFAg',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What is Dukaan Primium?",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                fontFamily: "prymaryFont"),
          ),
          SizedBox(
            height: 15,
          ),
          YoutubePlayer(
            controller: _ytcontroller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
            progressColors: const ProgressBarColors(
              playedColor: Colors.blueAccent,
              handleColor: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
