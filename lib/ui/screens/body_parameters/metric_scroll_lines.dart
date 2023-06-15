import 'package:flutter/material.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';

import '../../theme/app_colors.dart';

class MetricScrollLines extends StatefulWidget {
  MetricScrollLines({
    Key? key,
    required this.caption,
    this.metric,
    required this.focusedIndex,
    required this.startPoint,
    required this.initialItem,
    required this.length,
    this.onSelectedItemChanged,
  })  : generatedList = List.generate(length, (i) => i + startPoint),
        super(key: key);

  final String caption;
  final String? metric;
  final int focusedIndex;
  final int startPoint;
  final int initialItem;
  final int length;
  final List<int> generatedList;
  final void Function(int)? onSelectedItemChanged;

  @override
  State<MetricScrollLines> createState() => _MetricScrollLinesState();
}

class _MetricScrollLinesState extends State<MetricScrollLines> {
  late int _focusedIndex;
  @override
  void initState() {
    super.initState();
    _focusedIndex = widget.focusedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceWidth,
      height: context.deviceHeight * 0.130,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.caption,
                  style: const TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('$_focusedIndex${widget.metric ?? ''}',
                    style: const TextStyle(
                      color: AppColors.lightGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RotatedBox(
                quarterTurns: 3,
                child: ListWheelScrollView.useDelegate(
                  controller: FixedExtentScrollController(
                      initialItem: widget.initialItem),
                  itemExtent: 40,
                  perspective: 0.001,
                  diameterRatio: 3,
                  useMagnifier: true,
                  onSelectedItemChanged: widget.onSelectedItemChanged,
                  // onSelectedItemChanged: (value) {
                  //   setState(() {
                  //     _focusedIndex = value + widget.startPoint;
                  //   });
                  // },
                  physics: const FixedExtentScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: widget.generatedList.length,
                    builder: (context, index) {
                      return RotatedBox(
                        quarterTurns: 1,
                        child: SizedBox(
                          height: 63,
                          width: 40,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              if (widget.generatedList[index] ==
                                  _focusedIndex) ...[
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.grey,
                                  ),
                                ),
                                Positioned(
                                  left: 40 / 2 - 4 / 2,
                                  top: 7 / 2 - 4 / 2,
                                  child: Container(
                                    width: 4,
                                    height: 4,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ],
                              Positioned(
                                top: 7,
                                child: Container(
                                  width: 2,
                                  height: 37,
                                  color: AppColors.grey,
                                ),
                              ),
                              Positioned(
                                top: 32,
                                right: 2.8,
                                child: Container(
                                  width: 2,
                                  height: 12,
                                  color: AppColors.grey,
                                ),
                              ),
                              Positioned(
                                top: 32,
                                right: 11,
                                child: Container(
                                  width: 2,
                                  height: 12,
                                  color: AppColors.grey,
                                ),
                              ),
                              Positioned(
                                top: 32,
                                left: 2.8,
                                child: Container(
                                  width: 2,
                                  height: 12,
                                  color: AppColors.grey,
                                ),
                              ),
                              Positioned(
                                top: 32,
                                left: 11,
                                child: Container(
                                  width: 2,
                                  height: 12,
                                  color: AppColors.grey,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Text(
                                  widget.generatedList[index].toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: widget.generatedList[index] ==
                                            _focusedIndex
                                        ? AppColors.darkGrey
                                        : AppColors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
