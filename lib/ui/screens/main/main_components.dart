import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/bloc/session/session_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/resources/app_assets.dart';
import '../../../data/models/sports.dart';
import '../../style/app_button_style.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

class ActionAppBar extends StatelessWidget {
  final Widget body;
  const ActionAppBar({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brightBlue,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.transparent,
            titleSpacing: 0,
            elevation: 0,
            title: Image.asset(
              AppAssets.logoFit,
              width: 70,
              height: 18,
              fit: BoxFit.contain,
            ),
            actions: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    SvgPicture.asset(AppAssets.notification),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: SvgPicture.asset(AppAssets.notify),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () => context
                    .read<SessionBloc>()
                    .add(const SessionEvent.logout()),
                child: Container(
                  width: 32.w,
                  constraints: const BoxConstraints(
                    maxWidth: 32,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.light,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppAssets.profilePhoto),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: body,
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        hintText: context.localizations.searchHint,
        hintStyle: AppTextStyle.searchIcon,
        fillColor: AppColors.light,
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15),
          child: SvgPicture.asset(AppAssets.search),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: AppColors.transparent,
          ),
        ),
      ),
    );
  }
}

class SlideContainer extends StatefulWidget {
  const SlideContainer({
    Key? key,
    required this.sports,
  }) : super(key: key);

  final List<Sports> sports;

  @override
  State<SlideContainer> createState() => _SlideContainerState();
}

class _SlideContainerState extends State<SlideContainer> {
  final images = <String>[
    AppAssets.slideBackground,
    AppAssets.bodybuild,
    AppAssets.crossfit,
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 550, maxHeight: 200),
            height: 160.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: CarouselSlider(
                items: widget.sports
                    .map(
                      (v) => ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return CachedNetworkImage(
                                  imageUrl: v.image,
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) =>
                                          Shimmer.fromColors(
                                    baseColor: Colors.grey.shade300,
                                    highlightColor: Colors.grey.shade100,
                                    child: Container(
                                      alignment: Alignment.topCenter,
                                      width: context.deviceWidth - 48,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                  ),
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    alignment: Alignment.topCenter,
                                    width: context.deviceWidth - 48,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            Positioned(
                              bottom: 30,
                              child: Text(v.name,
                                  style: AppTextStyle.slideCaption),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: images.length == 1 ? false : true,
                  height: double.infinity,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) =>
                      setState(() => currentIndex = index),
                ),
              ),
            ),
          ),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((e) {
              return Container(
                width: images.length != 1 && currentIndex == e.key ? 16 : 6,
                height: 6,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == e.key
                      ? AppColors.lightGrey
                      : AppColors.light,
                ),
              );
            }).toList(),
          ),
        ],
      );
    });
  }
}

class CardView extends StatelessWidget {
  final int index;
  final List<Coach> _coachItems;
  const CardView(
      {super.key, required this.index, required List<Coach> coachItems})
      : _coachItems = coachItems;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 12,
      shadowColor: AppColors.brightBlue,
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: _coachItems[index].photo,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            imageBuilder: (context, imageProvider) => Container(
              alignment: Alignment.topCenter,
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // ClipRRect(
          //   child: Image.network(
          //     _coachItems[index].photo,
          //     fit: BoxFit.cover,
          //     width: double.infinity,
          //     height: 120,
          //     alignment: Alignment.topCenter,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_coachItems[index].sport, style: AppTextStyle.cardSport),
                const SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    style: AppTextStyle.cardCoachName,
                    children: [
                      TextSpan(
                        text: '${_coachItems[index].name} ',
                      ),
                      TextSpan(
                        text: _coachItems[index].surname,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: AppColors.orange,
                      size: 16,
                    ),
                    const SizedBox(width: 2),
                    Text('${_coachItems[index].rating}',
                        style: AppTextStyle.cardRanking),
                    const SizedBox(width: 14),
                    const Icon(
                      Icons.watch_later_outlined,
                      color: AppColors.grey,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(_coachItems[index].workTime,
                        style: AppTextStyle.cardDateTime),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
