import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart';
import 'package:fitcoachaz/ui/screens/otp/components.dart';

import '../../../app/config.dart';
import '../../../app/router/app_routes.dart';
import '../../bloc/register/register_bloc.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import '../../widgets/notification_window.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({
    Key? key,
    required this.phoneNumber,
    required this.verificationId,
  }) : super(key: key);

  final String phoneNumber;
  final String verificationId;
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late final FocusNode otpFieldFocus;

  @override
  void initState() {
    super.initState();
    otpFieldFocus = FocusNode();
    context.read<TimerBloc>().add(const TimerStarted(duration: resendTime));
  }

  @override
  void dispose() {
    super.dispose();
    otpFieldFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Text(
                context.localizations.numberConfirm,
                style: AppTextStyle.bigHeader,
              ),
              SizedBox(height: 25.h),
              OtpFields(
                otpFieldFocus: otpFieldFocus,
                onChanged: (otpCode) => context
                    .read<RegisterBloc>()
                    .add(RegisterEvent.otpChanged(otpCode: otpCode)),
              ),
              SizedBox(height: 22.h),
              _ConfirmButton(
                verificationId: widget.verificationId,
              ),
              SizedBox(
                height: 18.h,
              ),
              _ResendTime(phoneNumber: widget.phoneNumber),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResendTime extends StatefulWidget {
  const _ResendTime({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  final String phoneNumber;

  @override
  State<_ResendTime> createState() => __ResendTimeState();
}

class __ResendTimeState extends State<_ResendTime> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.lightGreen,
              ),
              onPressed: state is TimerRunComplete
                  ? () {
                      context.read<TimerBloc>().add(const TimerResending());
                      context.read<RegisterBloc>().add(
                            RegisterEvent.sendOTPToPhone(
                              number: widget.phoneNumber,
                            ),
                          );
                    }
                  : null,
              child: Text(
                state is TimerRunResending
                    ? 'Resending...'
                    : context.localizations.resendText,
                style: AppTextStyle.resendText,
              ),
            ),
            const SizedBox(width: 8),
            state is TimerRunResending
                ? const SizedBox.shrink()
                : const TimerText()
          ],
        );
      },
    );
  }
}

class _ConfirmButton extends StatelessWidget {
  const _ConfirmButton({
    Key? key,
    required this.verificationId,
  }) : super(key: key);

  final String verificationId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listenWhen: (previous, current) =>
          previous.registerStatus != current.registerStatus,
      listener: (context, state) {
        state.registerStatus == RegisterStatus.loaded
            ? Navigator.pushReplacementNamed(
                context,
                AppRoutesName.email,
              )
            : state.registerStatus == RegisterStatus.error
                ? showDialog(
                    context: context,
                    builder: (context) =>
                        NotificationWindow(alertText: state.error),
                  )
                : state.registerStatus == RegisterStatus.otpSentSuccess
                    ? context
                        .read<TimerBloc>()
                        .add(const TimerStarted(duration: resendTime))
                    : null;
      },
      buildWhen: (previous, current) =>
          previous.submissionStatus != current.submissionStatus,
      builder: (context, state) {
        logger.i(state);
        return GlobalButton(
          onPressed: state.submissionStatus == FormzSubmissionStatus.initial
              ? () => context.read<RegisterBloc>().add(
                    RegisterEvent.verifySentOTP(
                      otpCode: state.otpField.value,
                      verificationId: verificationId,
                    ),
                  )
              : null,
          child: state.submissionStatus == FormzSubmissionStatus.inProgress
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.silver),
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  context.localizations.confirmText,
                  style: AppTextStyle.verifyButton,
                ),
        );
      },
    );
  }
}
