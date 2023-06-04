import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../bloc/category/category_bloc.dart';
import '../../components/card_componet.dart';
import '../../theme/app_colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.brightBlue,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Categories'),
            backgroundColor: Colors.transparent,
          ),
          body: state.when(
            initial: () => Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
                color: AppColors.bright,
                size: 40,
              ),
            ),
            completed: (coaches) => ListView.separated(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
              itemCount: coaches.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) => CardComponent(
                coaches: coaches,
                index: index,
              ),
            ),
          ),
        );
      },
    );
  }
}
