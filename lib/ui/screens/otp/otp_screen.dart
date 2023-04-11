import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/router/app_routes.dart';
import '../../style/text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import 'otp_components.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late final TextEditingController otpFieldController;
  late final FocusNode otpFieldFocus;
  final _formKey = GlobalKey<FormState>();

  late String number;

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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
            Form(
              key: _formKey,
              child: OtpField(
                otpFieldController: otpFieldController,
                otpFieldLength: 4,
                otpFieldFocus: otpFieldFocus,
                otpOnChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            GlobalButton(
              backgroundColor: AppColors.lightGrey,
              buttonStyle: AppTextStyle.deactiveButton,
              text: context.localizations.confirmText,
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, AppRoutesName.passw);
                }
                FocusScope.of(context).unfocus();
                 otpFieldController.clear();
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
