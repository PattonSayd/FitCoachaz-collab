import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/app/resources/app_fonst.dart';
import 'package:fitcoachaz/ui/style/app_text_style.dart';
import 'package:fitcoachaz/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

class SubscribeScreen extends StatelessWidget {
  const SubscribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    const VideoPlayer(
                      url:
                          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
                      dataSourceType: DataSourceType.network,
                    ),
                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 50,
                      child: AppBar(
                        backgroundColor: AppColors.transparent,
                        iconTheme: const IconThemeData(color: AppColors.white),
                        title: const Text(
                          'Müəllim haqqında',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: AppFonts.alatsiRegular),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24)
                      .copyWith(top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'İsrafil Rzabəyli',
                            style: AppTextStyle.cardCoachName,
                          ),
                          SvgPicture.asset(
                            AppAssets.bookmarkTab,
                            colorFilter: const ColorFilter.mode(
                                AppColors.grey, BlendMode.srcIn),
                            width: 19.w,
                            height: 20.h,
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: AppColors.orange,
                            size: 16,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '4.9',
                            style: AppTextStyle.cardRanking,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Emin Xıdırov , Azərbaycan respublikasında 2022-ci ildə keçirilən bodybuilding yarışmasının “Men’s Physique” kategoriyasında 3-cü yeri tutmuşdur.',
                        style: TextStyle(
                          fontSize: 14.spMin,
                          height: 1.28,
                          color: AppColors.grey,
                        ),
                      ),
                      const SizedBox(height: 34),
                      Text(
                        'Tələbələr',
                        style: TextStyle(
                          fontSize: 16.spMin,
                          height: 1.28,
                          color: AppColors.darkBlue,
                          fontFamily: AppFonts.alatsiRegular,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24)
                  .copyWith(bottom: 12),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.white,
                    backgroundColor: AppColors.pink,
                    fixedSize: Size(context.deviceWidth, 48),
                    maximumSize: const Size(400, 48),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: AppColors.lightPink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                      contentPadding: EdgeInsets.zero,
                      content: Container(
                        width: 327.w,
                        height: 72.h,
                        decoration: BoxDecoration(
                          // color: AppColors.lightPink,
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: LayoutBuilder(builder: (context, constraints) {
                          print(constraints.maxHeight);
                          print(constraints.maxWidth);
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
                                      (constraints.maxWidth - 1) / 2,
                                      constraints.maxHeight),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Online',
                                  style: TextStyle(
                                    fontSize: 24,
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
                                      (constraints.maxWidth - 1) / 2,
                                      constraints.maxHeight),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Real dərs',
                                  style: TextStyle(
                                    fontSize: 24,
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
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 105,
                        child: Text(
                          'Abunə ol',
                          style: TextStyle(
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VideoPlayer extends StatefulWidget {
  final String url;
  final DataSourceType dataSourceType;
  const VideoPlayer(
      {super.key, required this.url, required this.dataSourceType});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
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
