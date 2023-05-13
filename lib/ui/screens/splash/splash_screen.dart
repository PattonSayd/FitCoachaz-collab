import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/session/session_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'assets/videos/splash.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
        _playVideo();
      })
      ..setVolume(0.0);
  }

  void _playVideo() async {
    _controller.play();
    while (_controller.value.isPlaying) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    if (context.mounted) {
      context.read<SessionBloc>().state.maybeWhen(
            authorized: () => Navigator.pushNamedAndRemoveUntil(
                context, AppRoutesName.tabs, (route) => false),
            unauthorized: () =>
                Navigator.pushReplacementNamed(context, AppRoutesName.welcome),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    logger.w('splash');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(
                color: Colors.black,
                // width: 200,
                // height: 200,
              ),
      ),
    );
  }
}
