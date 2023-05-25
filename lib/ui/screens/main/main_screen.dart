import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:fitcoachaz/ui/bloc/main/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';
import '../../../data/models/sports.dart';
import '../../style/app_button_style.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import 'main_components.dart';

class CardItem {
  final String name;
  final String image;
  final String sport;
  final String ranking;
  final String dateTime;

  CardItem(
    this.name,
    this.image,
    this.sport,
    this.ranking,
    this.dateTime,
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void Function()? onPressed;
    return Scaffold(
      backgroundColor: AppColors.brightBlue,
      appBar: const _AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Align(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 700),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.r),
                  child: const Search(),
                ),
              ),
            ),
            const SizedBox(height: 17),
            const _SlideContainer(),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(context.localizations.trendCoaches,
                      style: AppTextStyle.trendCoaches),
                  BlocBuilder<MainBloc, MainState>(
                    builder: (context, state) {
                      state.whenOrNull(
                        initialized: (sports, coaches) {
                          onPressed = () => Navigator.pushNamed(
                              context, AppRoutesName.seeAll,
                              arguments: coaches);
                        },
                      );
                      return TextButton(
                        onPressed: onPressed,
                        style: AppButtonStyle.textButtonReset,
                        child: Text(context.localizations.seeAllTrendCoaches,
                            style: AppTextStyle.seeAllTrendCoaches),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Container(
              constraints: const BoxConstraints(minHeight: 207, maxHeight: 208),
              width: context.deviceWidth,
              height: context.deviceHeight * 0.254,
              child: LayoutBuilder(builder: (context, constraints) {
                return BlocBuilder<MainBloc, MainState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => Center(
                        child: LoadingAnimationWidget.staggeredDotsWave(
                          color: AppColors.bright,
                          size: 40,
                        ),
                      ),
                      initialized: (sports, coaches) => ListView.builder(
                        itemExtent: constraints.maxWidth < 400
                            ? context.deviceWidth * 0.64
                            : 250,
                        shrinkWrap: true,
                        itemCount: coaches.take(4).length,
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => Navigator.pushNamed(
                              context, AppRoutesName.subscribe,
                              arguments: coaches[index]),
                          child: CardView(
                            index: index,
                            coachItems: coaches,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
            const SizedBox(height: 30),
            Align(
              child: Container(
                  constraints: const BoxConstraints(maxWidth: 350),
                  width: 327.w,
                  height: 72,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      AppAssets.advertising,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(AppRoutesName.notification),
            child: Align(
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
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(AppRoutesName.profile),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SlideContainer extends StatefulWidget {
  const _SlideContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<_SlideContainer> createState() => _SlideContainerState();
}

class _SlideContainerState extends State<_SlideContainer> {
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
                                      child: Text(v.sport,
                                          style: AppTextStyle.slideCaption),
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
