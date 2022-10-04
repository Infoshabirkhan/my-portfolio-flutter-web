import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({Key? key}) : super(key: key);

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/videos/portfolio_video.mp4')
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {
              _controller!.pause();
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: 1.sw,
      height: 300.sp,
      child: _controller != null
          ? _controller!.value.isInitialized
              ? AspectRatio(
                //  aspectRatio: 1.sw,
                   aspectRatio: _controller!.value.aspectRatio,
                  child: Stack(
                    children: [
                      Container(
                      color: Colors.black,
                      ),
                      VideoPlayer(_controller!),
                      Positioned(
                        bottom: 10.sp,
                        left: Responsive.padding(width: width),
                        child: InkWell(
                          onTap: (){

                            if(_controller!.value.isPlaying){

                              setState(() {
                                _controller!.pause();

                              });

                            }else{
                              setState(() {
                                _controller!.play();

                              });
                            }


                          },
                          child: Container(
                            width: 50.sp,
                            height: 50.sp,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child:  Center(
                              child: Icon(
                                _controller!.value.isPlaying ?  Icons.pause : Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
              : const Center(
                  child: CircularProgressIndicator(),
                )
          : const Center(
              child: Text('no found'),
            ),
    );
  }
}
