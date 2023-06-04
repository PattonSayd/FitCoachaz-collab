import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/search/search_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';

import '../../../app/assemble/assemble.dart';
import '../../../app/extension/widget_x.dart';
import '../../../app/resources/app_assets.dart';
import '../../../app/router/app_routes.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

class AnimatedAppBarWidget extends StatefulWidget {
  const AnimatedAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedAppBarWidget> createState() => _AnimatedAppBarWidgetState();
}

class _AnimatedAppBarWidgetState extends State<AnimatedAppBarWidget> {
  late final FocusNode focusNode;
  late final TextEditingController controller;
  late bool showClearBtn = false;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    focusNode = FocusNode();
    _listenToSearchFocusStatus();
    _listenToSearchController();
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  _listenToSearchFocusStatus() {
    focusNode.addListener(() {
      setState(() {
        if (focusNode.hasFocus) {
          assemble.appbar.streamController.add(false);
        }
      });
    });
  }

  _listenToSearchController() {
    controller.addListener(() {
      if (controller.text.isEmpty) {
        context.read<SearchBloc>().add(const SearchEvent.clear());
      }
      if (controller.text.length > 1) return;
      setState(() {
        showClearBtn = controller.text.isNotEmpty;
      });
    });
  }

  onTapCancelBtn() {
    setState(() {
      assemble.appbar.streamController.add(true);
      focusNode.unfocus();
      controller.clear();
    });
  }

  onTapClearBtn() {
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).appBarTheme.backgroundColor ??
        Theme.of(context).colorScheme.primary;

    return StreamBuilder<bool>(
        stream: assemble.appbar.stream,
        builder: (context, snapshot) {
          final showAppbar = snapshot.data ?? assemble.appbar.initial;
          return Material(
            color: backgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedSize(
                  key: const ValueKey('animatedSearchAppBar1'),
                  duration: const Duration(milliseconds: 250),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: AppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: AppColors.transparent,
                      titleSpacing: 0,
                      elevation: 0,
                      title: const _LogoWidget(),
                      actions: const [
                        _NotificationWidget(),
                        SizedBox(width: 16),
                        _ProfileWidget(),
                      ],
                    ),
                  ).isVisible(showAppbar && !showClearBtn),
                ),
                AnimatedSize(
                  key: const ValueKey('animatedSearchAppBar2'),
                  duration: const Duration(milliseconds: 250),
                  child: SizedBox(
                    height: MediaQuery.of(context).padding.top,
                  ).isVisible(!showAppbar || showClearBtn),
                ),
                Container(
                  color: backgroundColor,
                  height: kToolbarHeight,
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: _buildSearchWidget(context),
                          ),
                        ),
                        AnimatedSize(
                          key: const ValueKey('animatedSizeSearchAppBar3'),
                          duration: const Duration(milliseconds: 250),
                          child: TextButton(
                            onPressed: onTapCancelBtn,
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ).isVisible(!showAppbar || showClearBtn),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  TextFormField _buildSearchWidget(BuildContext context) => TextFormField(
        controller: controller,
        focusNode: focusNode,
        onChanged: (value) => assemble.search.add(SearchEvent.search(value)),
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
            padding: const EdgeInsets.all(11),
            child: SvgPicture.asset(AppAssets.search),
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              CupertinoIcons.clear_circled_solid,
              color: Color(0xffBFBFC1),
            ),
            onPressed: onTapClearBtn,
          ).isVisible(showClearBtn),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.transparent,
            ),
          ),
        ),
      );
}

class _ProfileWidget extends StatelessWidget {
  const _ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}

class _NotificationWidget extends StatelessWidget {
  const _NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(AppRoutesName.notification),
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
    );
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.logoFit,
      width: 70,
      height: 18,
      fit: BoxFit.contain,
    );
  }
}
