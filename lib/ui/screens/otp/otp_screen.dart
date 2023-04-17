import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
    super.initState();
    otpFieldController = TextEditingController();
    otpFieldFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    otpFieldController.dispose();
    otpFieldFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.localizations.numberConfirm,
              style: AppTextStyle.bigHeader,
            ),
            SizedBox(
              height: 25.h,
            ),
            PinCodeTextField(
              appContext: context,
              controller: otpFieldController,
              length: 6,
              autoDisposeControllers: false,
              backgroundColor: Colors.transparent,
              animationDuration: const Duration(milliseconds: 350),
              animationType: AnimationType.scale,
              autoFocus: true,
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
                if (value.length == 6) {
                  _isActive = true;
                }
                setState(() {});
              },
            ),
            SizedBox(
              height: 24.h,
            ),
            BlocConsumer<RegisterBloc, RegisterState>(
              listener: (context, state) {
                if (state is RegisterStateLoaded) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppRoutesName.passw, (route) => false);
                }
              },
              builder: (context, state) {
                if (state is RegisterStateOTPSentSuccess) {
                  verificationId = state.verificationId;
                }
                return GlobalButton(
                  isActive: _isActive,
                  onPress: () {
                    context.read<RegisterBloc>().add(VerifySentOTPRegisterEvent(
                        otpCode: otpFieldController.text,
                        verificationId: verificationId));
                  },
                );
              },
            ),
            SizedBox(
              height: 18.h,
            ),
            TextButton(
              onPressed: () {},
              child: Text(context.localizations.resendText,
                  style: AppTextStyle.resendText),
            )
          ],
        ),
      ),
    );
  }
}
