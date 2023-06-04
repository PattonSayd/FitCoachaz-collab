import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/resources/app_assets.dart';
import '../../../app/router/app_routes.dart';
import '../../bloc/main/main_bloc.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

class SlideWidget extends StatefulWidget {
  const SlideWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SlideWidget> createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
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
              child: BlocBuilder<MainBloc, MainState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Center(
                      child: LoadingAnimationWidget.staggeredDotsWave(
                        color: AppColors.bright,
                        size: 40,
                      ),
                    ),
                    initialized: (sports, coach) => CarouselSlider(
                      items: sports
                          .map(
                            (v) => GestureDetector(
                              onTap: () => Navigator.of(context).pushNamed(
                                  AppRoutesName.category,
                                  arguments: v.sport),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CachedNetworkImage(
                                          imageUrl: v.image,
                                          progressIndicatorBuilder: (context,
                                                  url, downloadProgress) =>
                                              Shimmer.fromColors(
                                            baseColor: Colors.grey.shade200,
                                            highlightColor:
                                                Colors.grey.shade100,
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              width: context.deviceWidth - 48,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                              ),
                                            ),
                                          ),
                                          imageBuilder:
                                              (context, imageProvider) =>
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
                                      child: Text(
                                        v.sport,
                                        style: AppTextStyle.slideCaption,
                                      ),
                                    ),
                                  ],
                                ),
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
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 17),
          _DotsWidget(images: images, currentIndex: currentIndex),
        ],
      );
    });
  }
}

class _DotsWidget extends StatelessWidget {
  const _DotsWidget({
    Key? key,
    required this.images,
    required this.currentIndex,
  }) : super(key: key);

  final List<String> images;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images.asMap().entries.map((e) {
        return Container(
          width: images.length != 1 && currentIndex == e.key ? 16 : 6,
          height: 6,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:
                currentIndex == e.key ? AppColors.lightGrey : AppColors.light,
          ),
        );
      }).toList(),
    );
  }
}
