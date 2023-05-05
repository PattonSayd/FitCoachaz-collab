import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/otp/otp_bloc.dart';
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
              OtpFields(
                otpFieldFocus: otpFieldFocus,
                onChanged: (otpCode) =>
                    context.read<OtpBloc>().add(OtpEvent(otpCode: otpCode)),
              ),
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
                                      RegisterEvent.sendOTPToPhone(
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

class _ConfirmButton extends StatelessWidget {
  const _ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        logger.i(state);
        state.whenOrNull(
          loaded: () => Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutesName.email,
            (route) => false,
          ),
          error: (error) => showDialog(
            context: context,
            builder: (context) => NotificationWindow(alertText: error),
          ),
        );
      },
      builder: (context, state) {
        logger.i(state);
        return BlocBuilder<OtpBloc, OtpState>(
          buildWhen: (prev, current) => prev.isValid != current.isValid,
          builder: (context, otp) {
            return GlobalButton(
              onPressed: otp.isValid
                  ? () => context
                      .read<RegisterBloc>()
                      .add(RegisterEvent.verifySentOTP(otpCode: otp.otpCode))
                  : null,
              child: state.whenOrNull(
                initial: () => Text(
                  context.localizations.confirmText,
                  style: AppTextStyle.verifyButton,
                ),
                loading: () => const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.silver),
                    strokeWidth: 2,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
