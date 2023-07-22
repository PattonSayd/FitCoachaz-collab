import 'package:fitcoachaz/ui/bloc/body_parameters/body_parameters_bloc.dart';
import 'package:fitcoachaz/ui/screens/body_parameters/metric_scroll_lines.dart';
import 'package:flutter/material.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/widgets/button_component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../style/app_text_style.dart';
import 'gender_selelction.dart';

class BodyParametersScreen extends StatefulWidget {
  const BodyParametersScreen({super.key});

  @override
  State<BodyParametersScreen> createState() => _BodyParametersScreenState();
}

class _BodyParametersScreenState extends State<BodyParametersScreen> {
  void initState() {
    super.initState();

    final state = context.read<BodyParametersBloc>().state;

    final listParameters = [
      MetricScrollLines(
        caption: 'I was in born',
        focusedIndex: state.born.focusedIndex,
        startPoint: state.born.startPoint,
        initialItem: state.born.focusedIndex - state.born.startPoint,
        length: state.born.length,
        onSelectedItemChanged: (value) => context
            .read<BodyParametersBloc>()
            .add(BodyParametersEvent.focusedBornIndex(
              focusedIndex: value + state.born.startPoint,
            )),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<BodyParametersBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body parameters'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 10),
                const GenderSelection(),
                const SizedBox(height: 40),
                MetricScrollLines(
                  caption: 'I was in born',
                  focusedIndex: state.born.focusedIndex,
                  startPoint: state.born.startPoint,
                  initialItem: state.born.focusedIndex - state.born.startPoint,
                  length: state.born.length,
                  onSelectedItemChanged: (value) => context
                      .read<BodyParametersBloc>()
                      .add(BodyParametersEvent.focusedBornIndex(
                        focusedIndex: value + state.born.startPoint,
                      )),
                ),
                const SizedBox(height: 40),
                MetricScrollLines(
                  caption: 'My Height',
                  metric: 'cm',
                  focusedIndex: state.height.focusedIndex,
                  startPoint: state.height.startPoint,
                  initialItem:
                      state.height.focusedIndex - state.height.startPoint,
                  length: state.height.length,
                  onSelectedItemChanged: (value) => context
                      .read<BodyParametersBloc>()
                      .add(BodyParametersEvent.focusedHeightIndex(
                        focusedIndex: value + state.height.startPoint,
                      )),
                ),
                const SizedBox(height: 40),
                MetricScrollLines(
                  caption: 'My Weight',
                  metric: 'kg',
                  focusedIndex: state.weight.focusedIndex,
                  startPoint: state.weight.startPoint,
                  initialItem:
                      state.weight.focusedIndex - state.weight.startPoint,
                  length: state.weight.length,
                  onSelectedItemChanged: (value) => context
                      .read<BodyParametersBloc>()
                      .add(BodyParametersEvent.focusedWeightIndex(
                        focusedIndex: value + state.weight.startPoint,
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0)
                .copyWith(bottom: 25),
            child: ButtonComponent(
              onPressed: () {},
              child: Text(
                context.localizations.confirmText,
                style: AppTextStyle.verifyButton,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
