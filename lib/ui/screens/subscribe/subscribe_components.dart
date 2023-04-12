import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

import '../../../app/resources/app_fonst.dart';
import '../../theme/app_colors.dart';

class IVideoPlayer extends StatefulWidget {
  final String url;
  final DataSourceType dataSourceType;
  const IVideoPlayer(
      {super.key, required this.url, required this.dataSourceType});

  @override
  State<IVideoPlayer> createState() => _IVideoPlayerState();
}

class _IVideoPlayerState extends State<IVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() {
    switch (widget.dataSourceType) {
      case DataSourceType.network:
        _videoPlayerController = VideoPlayerController.network(widget.url);
        break;
      case DataSourceType.contentUri:
        _videoPlayerController =
            VideoPlayerController.contentUri(Uri.parse(widget.url));
        break;
      case DataSourceType.asset:
        _videoPlayerController = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.file:
        _videoPlayerController = VideoPlayerController.file(File(widget.url));
        break;
      default:
    }

    _videoPlayerController.initialize().then(
          (_) => setState(
            () => _chewieController = ChewieController(
              videoPlayerController: _videoPlayerController,
              aspectRatio: 16 / 9,
              allowMuting: false,
              allowPlaybackSpeedChanging: false,
              autoInitialize: true,
              additionalOptions: (context) {
                return <OptionItem>[
                  OptionItem(
                    onTap: () => debugPrint('My option works!'),
                    iconData: Icons.chat,
                    title: 'My localized title',
                  ),
                ];
              },
              errorBuilder: (context, errorMessage) {
                return Center(
                  child: Text(
                    errorMessage,
                    style: const TextStyle(color: AppColors.darkGrey),
                  ),
                );
              },
            ),
          ),
        );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: _chewieController != null
              ? Chewie(controller: _chewieController!)
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        )
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.transparent,
      iconTheme: const IconThemeData(color: AppColors.white),
      title: Text(
        context.localizations.subAboutCoach,
        style: const TextStyle(
            color: AppColors.white, fontFamily: AppFonts.alatsiRegular),
      ),
    );
  }
}

class AlertButtons {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.lightPink,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
        contentPadding: EdgeInsets.zero,
        content: Container(
          constraints: const BoxConstraints(
            maxHeight: 72,
            maxWidth: 327,
          ),
          width: 327.w,
          height: 72.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: AppColors.lightPink,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36),
                        bottomLeft: Radius.circular(36),
                      ),
                    ),
                    fixedSize: Size(
                        (constraints.maxWidth - 1) / 2, constraints.maxHeight),
                  ),
                  onPressed: () {},
                  child: Text(
                    context.localizations.subOnline,
                    style: TextStyle(
                      fontSize: 24.spMin,
                      height: 1,
                      fontFamily: AppFonts.alatsiRegular,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const VerticalDivider(
                  indent: 4,
                  endIndent: 4,
                  color: AppColors.white,
                  thickness: 1,
                  width: 1,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: AppColors.lightPink,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                    fixedSize: Size(
                        (constraints.maxWidth - 1) / 2, constraints.maxHeight),
                  ),
                  onPressed: () {},
                  child: Text(
                    context.localizations.subOnline,
                    style: TextStyle(
                      fontSize: 24.spMin,
                      height: 1,
                      fontFamily: AppFonts.alatsiRegular,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.pink,
        fixedSize: Size(context.deviceWidth, 48),
        maximumSize: const Size(400, 48),
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: () => AlertButtons.show(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 105,
            child: Text(
              context.localizations.subscribe,
              style: const TextStyle(
                fontSize: 16,
                height: 1.16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
            ),
            child: const Icon(
              Icons.keyboard_arrow_right_rounded,
              color: AppColors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
