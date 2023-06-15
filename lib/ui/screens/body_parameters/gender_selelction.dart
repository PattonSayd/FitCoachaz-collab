import 'package:flutter/material.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/body_parameters/body_parameters_bloc.dart';
import '../../theme/app_colors.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _CaptionWidget(),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => context.read<BodyParametersBloc>().add(
                      const BodyParametersEvent.genderChanged(
                        GenderState.male,
                      ),
                    ),
                child: BlocBuilder<BodyParametersBloc, BodyParametersState>(
                  buildWhen: (pre, cur) => pre.gender != cur.gender,
                  builder: (context, state) {
                    return _GenderContainerWidget(
                      caption: 'Male',
                      icon: Icons.male,
                      gender: state.gender == GenderState.male,
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () => context.read<BodyParametersBloc>().add(
                      const BodyParametersEvent.genderChanged(
                        GenderState.female,
                      ),
                    ),
                child: BlocBuilder<BodyParametersBloc, BodyParametersState>(
                  buildWhen: (pre, cur) => pre.gender != cur.gender,
                  builder: (context, state) {
                    return _GenderContainerWidget(
                      caption: 'Female',
                      icon: Icons.female,
                      gender: state.gender == GenderState.female,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CaptionWidget extends StatelessWidget {
  const _CaptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Gender',
      style: TextStyle(
        color: AppColors.darkGrey,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _GenderContainerWidget extends StatelessWidget {
  const _GenderContainerWidget({
    Key? key,
    required this.caption,
    required this.icon,
    required this.gender,
  }) : super(key: key);

  final String caption;
  final IconData icon;
  final bool gender;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: gender ? 1 : 0.2,
      child: Container(
        width: context.deviceWidth / 2 - 30,
        height: 70,
        decoration: BoxDecoration(
          color: gender ? Colors.transparent : AppColors.brightSilver,
          border: Border.all(color: AppColors.darkGrey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.darkGrey,
              size: 35,
            ),
            const SizedBox(width: 5),
            Text(
              caption,
              style: const TextStyle(
                color: AppColors.darkGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
