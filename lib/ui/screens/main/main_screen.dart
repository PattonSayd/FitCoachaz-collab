import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../bloc/main/main_bloc.dart';
import '../../style/app_button_style.dart';
import '../../style/app_text_style.dart';
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
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          initialized: (sports, coaches) => ActionAppBar(
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
                  SlideContainer(sports: sports),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(context.localizations.trendCoaches,
                            style: AppTextStyle.trendCoaches),
                        TextButton(
                          onPressed: () => Navigator.pushNamed(
                              context, AppRoutesName.seeAll,
                              arguments: coaches),
                          style: AppButtonStyle.textButtonReset,
                          child: Text(context.localizations.seeAllTrendCoaches,
                              style: AppTextStyle.seeAllTrendCoaches),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 22),
                  Container(
                    constraints:
                        const BoxConstraints(minHeight: 207, maxHeight: 208),
                    width: context.deviceWidth,
                    height: context.deviceHeight * 0.254,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return ListView.builder(
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
                              context, AppRoutesName.profile),
                          child: CardView(
                            index: index,
                            coachItems: coaches,
                          ),
                        ),
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
          ),
        );
      },
    );
  }
}
