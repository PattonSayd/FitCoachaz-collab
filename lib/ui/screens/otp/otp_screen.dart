import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart';
import 'package:fitcoachaz/ui/screens/otp/otp_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../app/config.dart';
import '../../../app/router/app_routes.dart';
import '../../bloc/register/register_bloc.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late final TextEditingController otpFieldController;
  late final FocusNode otpFieldFocus;
  bool _isActive = false;
  late String verificationId;

  @override
  void initState() {
    logger.w('inistate');
    super.initState();
    otpFieldController = TextEditingController();
    otpFieldFocus = FocusNode();
    context.read<TimerBloc>().add(const TimerStarted(duration: resendTimer));
  }

  @override
  void dispose() {
    super.dispose();
    otpFieldController.dispose();
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
              SizedBox(height: 100.h),
              Text(
                context.localizations.numberConfirm,
                style: AppTextStyle.bigHeader,
              ),
              SizedBox(height: 25.h),
              PinCodeTextField(
                appContext: context,
                controller: otpFieldController,
                length: 6,
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
                onChanged: (value) {
                  _isActive = value.length == 6 ? true : false;
                  setState(() {});
                },
              ),
              SizedBox(height: 22.h),
              BlocConsumer<RegisterBloc, RegisterState>(
                listener: (context, state) {
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
                  if (state is RegisterStateOTPSentSuccess) {
                    verificationId = state.verificationId;
                  }
                  return GlobalButton(
                    isActive: _isActive,
                    onPress: () {
                      context.read<RegisterBloc>().add(VerifySentOTPEvent(
                          otpCode: otpFieldController.text,
                          verificationId: verificationId));
                    },
                  );
                },
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<TimerBloc, TimerState>(
                    builder: (context, state) {
                      bool isActive = false;
                      if (state is TimerRunComplete) isActive = !isActive;
                      return TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: AppColors.lightGreen,
                        ),
                        onPressed: isActive
                            ? () {
                                context
                                    .read<TimerBloc>()
                                    .add(const TimerReset());
                                context
                                    .read<RegisterBloc>()
                                    .add(const SendOTPToPhoneEvent());
                              }
                            : null,
                        child: Text(
                          context.localizations.resendText,
                          style: AppTextStyle.resendText,
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  const TimerText()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
