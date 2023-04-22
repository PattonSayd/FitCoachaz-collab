import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/service_locator.dart';
import 'package:fitcoachaz/ui/bloc/otp/otp_bloc.dart';
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart';
import 'package:fitcoachaz/ui/screens/otp/otp_components.dart';

import '../../../app/config.dart';
import '../../../app/router/app_routes.dart';
import '../../bloc/register/register_bloc.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';

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
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutesName.welcome,
              (route) => false,
            ),
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
              SizedBox(height: 100.h),
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
                                context.read<TimerBloc>().add(
                                    const TimerStarted(duration: resendTime));
                                context.read<RegisterBloc>().add(
                                      SendOTPToPhoneEvent(
                                        number: context
                                            .read<RegisterBloc>()
                                            .phoneNumber,
                                      ),
                                    );
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
              context, AppRoutesName.passw, (route) => false);
        } else if (state is RegisterStateError) {
          Fluttertoast.showToast(
            msg: state.error,
            fontSize: 18,
            backgroundColor: AppColors.brightBlue,
            textColor: AppColors.grey,
            gravity: ToastGravity.TOP,
          );
        }
      },
      builder: (context, state) {
        logger.d(state);
        String verificationId = '';
        bool loading = false;
        if (state is RegisterStateOTPSentSuccess) {
          verificationId = state.verificationId;
        } else if (state is RegisterStateLoaded) {
          loading = !loading;
        }
        return BlocBuilder<OtpBloc, OtpState>(
          buildWhen: (prev, current) => prev.isValid != current.isValid,
          builder: (context, state) {
            return GlobalButton2(
              loading: loading,
              onPressed: state.isValid && !loading
                  ? () => context.read<RegisterBloc>().add(VerifySentOTPEvent(
                      otpCode: state.otpCode, verificationId: verificationId))
                  : null,
            );
          },
        );
      },
    );
  }
}
