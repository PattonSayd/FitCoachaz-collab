import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:flutter/material.dart';
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
  MainScreen({super.key});
  final _cardItems = <CardItem>[
    CardItem(
      'İsrafil Rzabəyli',
      AppAssets.bodybuild,
      'Fitness',
      '4.9',
      '10:00 - 18:00',
    ),
    CardItem(
      'Ismayil Rzabəyli',
      AppAssets.slideBackground,
      'Fitness',
      '4.9',
      '10:00 - 18:00',
    ),
    CardItem(
      'İsrafil Rzabəyli',
      AppAssets.welcomeScreen,
      'Fitness',
      '4.9',
      '10:00 - 18:00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ActionAppBar(
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Search(),
          ),
          const SizedBox(height: 17),
          const SlideContainer(),
          const SizedBox(height: 24),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24), child: ViewAll()),
          const SizedBox(height: 22),
          Container(
            constraints: const BoxConstraints(minHeight: 207, maxHeight: 208),
            width: context.deviceWidth,
            height: context.deviceHeight * 0.254,
            child: LayoutBuilder(builder: (context, constraints) {
              return ListView.builder(
                itemExtent: constraints.maxWidth < 400
                    ? context.deviceWidth * 0.64
                    : 250,
                shrinkWrap: true,
                itemCount: _cardItems.length,
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutesName.subscribe),
                  child: CardView(
                    index: index,
                    cardItems: _cardItems,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 34),
          Align(
            child: SizedBox(
                width: context.deviceWidth * 0.872,
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
    );
  }
}
