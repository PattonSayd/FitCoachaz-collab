import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/bloc/session/session_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/resources/app_assets.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

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
