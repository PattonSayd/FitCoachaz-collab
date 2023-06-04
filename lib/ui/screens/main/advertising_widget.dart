import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/resources/app_assets.dart';

class AdvertisingWidget extends StatelessWidget {
  const AdvertisingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
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
        ),
      ),
    );
  }
}
