import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../app/router/app_routes.dart';
import '../../data/models/coach.dart';
import '../style/app_text_style.dart';
import '../theme/app_colors.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({
    Key? key,
    required this.coaches,
    required this.index,
  }) : super(key: key);

  final List<Coach> coaches;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black.withOpacity(0.1)),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
            spreadRadius: 1,
          )
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: InkWell(
          onTap: () => Navigator.of(context)
              .pushNamed(AppRoutesName.subscribe, arguments: coaches[index]),
          child: Row(
            children: [
              _PhotoWidget(coaches: coaches, index: index),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SportCategotyWdget(coaches: coaches, index: index),
                  const SizedBox(height: 5),
                  _NameWidget(coaches: coaches, index: index),
                  const SizedBox(height: 5),
                  _RatingWidget(coaches: coaches, index: index),
                  const SizedBox(height: 5),
                  _WorkTimeWidget(coaches: coaches, index: index),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WorkTimeWidget extends StatelessWidget {
  const _WorkTimeWidget({
    super.key,
    required this.coaches,
    required this.index,
  });

  final List<Coach> coaches;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.watch_later_outlined,
          color: AppColors.grey,
          size: 16,
        ),
        const SizedBox(width: 5),
        Text(
          coaches[index].workTime,
          style: AppTextStyle.cardDateTime,
        ),
      ],
    );
  }
}

class _RatingWidget extends StatelessWidget {
  const _RatingWidget({
    super.key,
    required this.coaches,
    required this.index,
  });

  final List<Coach> coaches;
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
        Text(
          '${coaches[index].rating}',
          style: AppTextStyle.cardRanking,
        ),
      ],
    );
  }
}

class _NameWidget extends StatelessWidget {
  const _NameWidget({
    super.key,
    required this.coaches,
    required this.index,
  });

  final List<Coach> coaches;
  final int index;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppTextStyle.cardCoachName,
        children: [
          TextSpan(
            text: '${coaches[index].name} ',
          ),
          TextSpan(
            text: coaches[index].surname,
          ),
        ],
      ),
    );
  }
}

class _SportCategotyWdget extends StatelessWidget {
  const _SportCategotyWdget({
    super.key,
    required this.coaches,
    required this.index,
  });

  final List<Coach> coaches;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      coaches[index].sport,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _PhotoWidget extends StatelessWidget {
  const _PhotoWidget({
    super.key,
    required this.coaches,
    required this.index,
  });

  final List<Coach> coaches;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: coaches[index].photo,
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          alignment: Alignment.topCenter,
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
        ),
      ),
      imageBuilder: (context, imageProvider) => Container(
        alignment: Alignment.topCenter,
        width: 120,
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
