import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:fitcoachaz/ui/screens/subscribe/subscribe_components.dart';
import 'package:fitcoachaz/ui/style/app_text_style.dart';
import 'package:fitcoachaz/ui/theme/app_colors.dart';

class SubscribeScreen extends StatelessWidget {
  const SubscribeScreen({
    Key? key,
    required this.coach,
  }) : super(key: key);

  final Coach coach;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: const [
                    IVideoPlayer(
                      url:
                          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
                      dataSourceType: DataSourceType.network,
                    ),
                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 50,
                      child: Header(),
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
                            '${coach.name} ${coach.surname}',
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
                            coach.rating.toString(),
                            style: AppTextStyle.cardRanking,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                          'Emin Xıdırov , Azərbaycan respublikasında 2022-ci ildə keçirilən bodybuilding yarışmasının “Men’s Physique” kategoriyasında 3-cü yeri tutmuşdur.',
                          style: AppTextStyle.subDescription),
                      const SizedBox(height: 34),
                      Text(
                        'Tələbələr',
                        style: AppTextStyle.subStudents,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24)
                  .copyWith(bottom: 12),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: SubscribeButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
