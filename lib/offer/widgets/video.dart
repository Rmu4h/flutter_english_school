import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

///
class YoutubeAppDemo extends StatefulWidget {
  const YoutubeAppDemo({super.key});

  @override
  _YoutubeAppDemoState createState() => _YoutubeAppDemoState();
}

class _YoutubeAppDemoState extends State<YoutubeAppDemo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController.fromVideoId(
      videoId: 'U297QPN2G1Q',
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );

    _controller.setFullScreenListener(
      (isFullScreen) {
        log('${isFullScreen ? 'Entered' : 'Exited'} Fullscreen.');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controller,
      aspectRatio: 16 / 9,
      builder: (context, player) {
        return Scaffold(
            // backgroundColor: Colors.red,
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (kIsWeb && constraints.maxWidth > 750) {
                return Container(
                    // height: 600,
                    width: 800,
                    color: Colors.transparent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        player,
                        const VideoPositionIndicator(),
                      ],
                    ),
                  )
                );
              }

              return Container(
                width: 800,
                color: Colors.transparent,
                //height: 260,


                // decoration: const BoxDecoration(
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomRight,
                    //   stops: [
                    //     0.4,
                    //     0.6,
                    //     // 0.7,
                    //     0.8,
                    //   ],
                    //   colors: [
                    //     Colors.white,
                    //     Color(0xffE5FEF6),
                    //     Color(0xffC3FCEA),
                    //     // Color(0xff88F9D6),
                    //   ],
                    // )),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      player,
                      VideoPositionIndicator(),
                      // const Controls(),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

class VideoPositionIndicator extends StatelessWidget {
  ///
  const VideoPositionIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.ytController;

    return StreamBuilder<YoutubeVideoState>(
      stream: controller.videoStateStream,
      initialData: const YoutubeVideoState(),
      builder: (context, snapshot) {
        final position = snapshot.data?.position.inMilliseconds ?? 0;
        final duration = controller.metadata.duration.inMilliseconds;

        return LinearProgressIndicator(
          backgroundColor: Colors.purple.withOpacity(0),
          color: Colors.deepOrange,
          value: duration == 0 ? 0 : position / duration,
          minHeight: 1,
        );
      },
    );
  }
}
