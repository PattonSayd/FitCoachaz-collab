import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/router/app_routes.dart';
import '../../../data/models/coach.dart';
import '../../bloc/main/main_bloc.dart';
import '../../style/app_button_style.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

class CardsCaptionWidget extends StatelessWidget {
  const CardsCaptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void Function()? onPressed;
    return Padding(
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
    );
  }
}

class SwipeableCardsWidget extends StatelessWidget {
  const SwipeableCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: _CardWidget(
                    index: index,
                    coachItems: coaches,
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final int index;
  final List<Coach> _coachItems;
  const _CardWidget({
    Key? key,
    required this.index,
    required List<Coach> coachItems,
  })  : _coachItems = coachItems,
        super(key: key);

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
          _PhotoWidget(coachItems: _coachItems, index: index),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SportCategoryWidget(coachItems: _coachItems, index: index),
                const SizedBox(height: 4),
                _NameWidget(coachItems: _coachItems, index: index),
                const SizedBox(height: 8),
                _DetailsWidget(coachItems: _coachItems, index: index),
                const SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _DetailsWidget extends StatelessWidget {
  const _DetailsWidget({
    Key? key,
    required List<Coach> coachItems,
    required this.index,
  })  : _coachItems = coachItems,
        super(key: key);

  final List<Coach> _coachItems;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_rounded,
          color: AppColors.orange,
          size: 16,
        ),
        const SizedBox(width: 2),
        Text('${_coachItems[index].rating}', style: AppTextStyle.cardRanking),
        const SizedBox(width: 14),
        const Icon(
          Icons.watch_later_outlined,
          color: AppColors.grey,
          size: 16,
        ),
        const SizedBox(width: 5),
        Text(_coachItems[index].workTime, style: AppTextStyle.cardDateTime),
      ],
    );
  }
}

class _NameWidget extends StatelessWidget {
  const _NameWidget({
    Key? key,
    required List<Coach> coachItems,
    required this.index,
  })  : _coachItems = coachItems,
        super(key: key);

  final List<Coach> _coachItems;
  final int index;

  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}

class _SportCategoryWidget extends StatelessWidget {
  const _SportCategoryWidget({
    Key? key,
    required List<Coach> coachItems,
    required this.index,
  })  : _coachItems = coachItems,
        super(key: key);

  final List<Coach> _coachItems;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(_coachItems[index].sport, style: AppTextStyle.cardSport);
  }
}

class _PhotoWidget extends StatelessWidget {
  const _PhotoWidget({
    Key? key,
    required List<Coach> coachItems,
    required this.index,
  })  : _coachItems = coachItems,
        super(key: key);

  final List<Coach> _coachItems;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
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
    );
  }
}
