import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class BodyParameters extends StatefulWidget {
  const BodyParameters({super.key});

  @override
  State<BodyParameters> createState() => _BodyParametersState();
}

class _BodyParametersState extends State<BodyParameters> {
  int _focusedIndex = 22;
  final List<int> data = List.generate(86, (index) => index + 15);

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Horizontal list',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: context.deviceWidth,
        height: context.deviceHeight * 0.154,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('My Weight',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                  Text('${_focusedIndex}kg',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
            Expanded(
                child: ScrollSnapList(
              scrollPhysics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              onItemFocus: (index) => setState(() {
                _focusedIndex = index + 15;
              }),
              duration: 150,
              itemSize: 30,
              initialIndex: 7,
              dynamicItemOpacity: 0.3,
              dynamicItemSize: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (data[index] == _focusedIndex)
                        Stack(
                          children: [
                            Container(
                              width: 7,
                              height: 7,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.darkGrey, // Цвет круга
                              ),
                            ),
                            Positioned(
                              left: 7 / 2 - 4 / 2,
                              top: 7 / 2 - 4 / 2,
                              child: Container(
                                width: 4,
                                height: 4,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.white, // Цвет круга
                                ),
                              ),
                            )
                          ],
                        ),
                      Container(
                        width: 2, // Ширина вертикальной линии
                        height: 50, // Высота вертикальной линии
                        color: Colors.black,
                      ),
                      Text(data[index].toString()),
                    ],
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
