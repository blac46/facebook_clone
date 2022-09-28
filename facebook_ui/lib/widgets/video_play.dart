import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

class Videoplay extends StatefulWidget {
  const Videoplay(VideoPlayerController videoPlayerController,  {Key? key}) : super(key: key);

  @override
  State<Videoplay> createState() => _VideoplayState();
}

class _VideoplayState extends State<Videoplay> {
  late VideoPlayerController? controller;

  String dataSource = "https://youtu.be/UhQsh6ciXuc";

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network(dataSource)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
      controller!.play();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        controller!.value.isInitialized
            ? AspectRatio(
                aspectRatio: controller!.value.aspectRatio,
                child: Videoplay(controller!),
              )
            : Container(
                height: 200,
                width: double.infinity,
                child: Center(child: CircularProgressIndicator(),),
              )
      ],
    );

  }
}
