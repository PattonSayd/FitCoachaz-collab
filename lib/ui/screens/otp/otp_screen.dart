import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/otp/otp_bloc.dart';
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart';
import 'package:fitcoachaz/ui/screens/otp/otp_components.dart';

import '../../../app/config.dart';
import '../../../app/router/app_routes.dart';
import '../../bloc/register/register_bloc.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import '../../widgets/notification_window.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, this.registerContext});

  final BuildContext? registerContext;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late final FocusNode otpFieldFocus;

  @override
  void initState() {
    super.initState();
    logger.i('initStateOTP');
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
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutesName.welcome,
                (route) => false,
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
          ),
        ),
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
              _OtpInputs(otpFieldFocus: otpFieldFocus),
              SizedBox(height: 22.h),
              const _ConfirmButton(),
              SizedBox(
                height: 18.h,
              ),
              BlocBuilder<TimerBloc, TimerState>(
                buildWhen: (prev, state) {
                  logger.wtf(prev.runtimeType != state.runtimeType);
                  return prev.runtimeType != state.runtimeType;
                },
                builder: (context, state) {
                  logger.i(state);
                  bool isActive = false;
                  if (state is TimerRunComplete) isActive = !isActive;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: AppColors.lightGreen,
                        ),
                        onPressed: isActive
                            ? () {
                                context.read<RegisterBloc>().add(
                                      SendOTPToPhoneEvent(
                                        number: context
                                            .read<RegisterBloc>()
                                            .phoneNumber,
                                      ),
                                    );
                                context.read<TimerBloc>().add(
                                    const TimerStarted(duration: resendTime));
                              }
                            : null,
                        child: Text(
                          context.localizations.resendText,
                          style: AppTextStyle.resendText,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const TimerText()
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OtpInputs extends StatelessWidget {
  const _OtpInputs({
    Key? key,
    required this.otpFieldFocus,
  }) : super(key: key);

  final FocusNode otpFieldFocus;

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
        onChanged: (otpCode) =>
            context.read<OtpBloc>().add(OtpEvent(otpCode: otpCode)));
  }
}

class _ConfirmButton extends StatelessWidget {
  const _ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        logger.d(state);
        if (state is RegisterStateLoaded) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutesName.email,
            (route) => false,
          );
        } else if (state is RegisterStateError) {
          showDialog(
            context: context,
            builder: (context) => NotificationWindow(alertText: state.error),
          );
        }
      },
      builder: (context, state) {
        logger.d(state);
        String verificationId = '';
        if (state is RegisterStateOTPSentSuccess) {
          verificationId = state.verificationId;
        }
        return BlocBuilder<OtpBloc, OtpState>(
          buildWhen: (prev, current) => prev.isValid != current.isValid,
          builder: (context, otpState) {
            return GlobalButton2(
              onPressed: otpState.isValid && state is! RegisterStateLoading
                  ? () => context.read<RegisterBloc>().add(VerifySentOTPEvent(
                      otpCode: otpState.otpCode,
                      verificationId: verificationId))
                  : null,
              child: state is RegisterStateLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator.adaptive(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColors.silver),
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
      },
    );
  }
}
