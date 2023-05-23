import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:shimmer/shimmer.dart';

import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({
    Key? key,
    required this.coach,
  }) : super(key: key);

  final List<Coach> coach;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brightBlue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Trend Coaches'),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
        child: ListView.separated(
          itemCount: coach.length,
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemBuilder: (context, index) => Container(
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
                onTap: () {},
                child: Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: coach[index].photo,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
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
                    ),
                    // Image.network(
                    //   coach[index].photo,
                    //   width: 120,
                    //   height: 120,
                    //   fit: BoxFit.cover,
                    // ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coach[index].sport,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            style: AppTextStyle.cardCoachName,
                            children: [
                              TextSpan(
                                text: '${coach[index].name} ',
                              ),
                              TextSpan(
                                text: coach[index].surname,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: AppColors.orange,
                              size: 16,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              '${coach[index].rating}',
                              style: AppTextStyle.cardRanking,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.watch_later_outlined,
                              color: AppColors.grey,
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              coach[index].workTime,
                              style: AppTextStyle.cardDateTime,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
