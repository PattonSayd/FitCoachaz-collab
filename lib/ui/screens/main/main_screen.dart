import 'package:fitcoachaz/ui/screens/main/slide_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../app/assemble/assemble.dart';
import '../../../logger.dart';
import '../../bloc/search/search_bloc.dart';
import '../../widgets/card_componet.dart';
import '../../theme/app_colors.dart';
import 'advertising_widget.dart';
import 'animated_appbar_widget.dart';
import 'cards_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    logger.e('Building widget MainScreen');
    return Scaffold(
      backgroundColor: AppColors.brightBlue,
      body: Column(
        children: [
          const AnimatedAppBarWidget(),
          Expanded(
            child: StreamBuilder<bool>(
              stream: assemble.appbar.stream,
              builder: (context, snapshot) {
                final showAppBar = snapshot.data ?? assemble.appbar.initial;
                return showAppBar
                    ? const _MainContent()
                    : const _SearchContent();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 17),
          SlideWidget(),
          SizedBox(height: 24),
          CardsCaptionWidget(),
          SizedBox(height: 22),
          SwipeableCardsWidget(),
          SizedBox(height: 30),
          AdvertisingWidget(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _SearchContent extends StatelessWidget {
  const _SearchContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        logger.e(state);
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: AppColors.bright,
              size: 40,
            ),
          ),
          loaded: (coaches) => ListView.separated(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
            itemCount: coaches.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) => CardComponent(
              coaches: coaches,
              index: index,
            ),
          ),
        );
      },
    );
  }
}
