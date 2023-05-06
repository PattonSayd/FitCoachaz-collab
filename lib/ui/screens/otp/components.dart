import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../app/config.dart';
import '../../bloc/timer/timer_bloc.dart';
import '../../theme/app_colors.dart';

class TimerText extends StatelessWidget {
  const TimerText({super.key});

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).toString().padLeft(2, '0');
    return Text(
      '$minutesStr:$secondsStr',
    );
  }
}

class OtpFields extends StatelessWidget {
  const OtpFields({
    Key? key,
    required this.otpFieldFocus,
    required this.onChanged,
  }) : super(key: key);

  final FocusNode otpFieldFocus;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: otpLength,
      autoDisposeControllers: false,
      backgroundColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 350),
      animationType: AnimationType.scale,
      keyboardType: TextInputType.number,
      enableActiveFill: true,
      cursorHeight: 20,
      cursorColor: AppColors.darkBlue,
      focusNode: otpFieldFocus,
      autovalidateMode: AutovalidateMode.always,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 45.h,
        fieldWidth: 45.w,
        inactiveColor: AppColors.brightSilver,
        activeColor: AppColors.lightGreen,
        activeFillColor: AppColors.lightBlue,
        selectedFillColor: AppColors.lightBlue,
        selectedColor: AppColors.lightGreen,
        inactiveFillColor: AppColors.lightBlue,
        errorBorderColor: Colors.red,
        borderWidth: 2,
      ),
      onChanged: onChanged,
    );
  }
}
