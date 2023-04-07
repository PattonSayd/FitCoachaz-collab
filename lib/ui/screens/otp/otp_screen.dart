import 'package:fitcoachaz/ui/widgets/global_otp_field.dart';
import 'package:flutter/material.dart';

import '../../../app/router/app_routes.dart';
import '../../style/text_style.dart';
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
              'Kodu təsdiqlə',
              style: AppTextStyle.bigHeader,
            ),
            SizedBox(
              height: 24,
            ),
            Form(
              key: _formKey,
              child: GlobalOtpField(
                otpFieldController: otpFieldController,
                otpFieldLength: 4,
                otpFieldFocus: otpFieldFocus,
                otpOnChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GlobalButton(
              backgroundColor: AppColors.lightGrey,
              buttonStyle: AppTextStyle.deactiveButton,
              text: 'TƏSDİQ ET',
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Əla!'),
                      backgroundColor: AppColors.lightGreen,
                    ),
                  );
                }
                Navigator.pushNamed(context, AppRoutesName.passw);
              },
            ),
            SizedBox(
              height: 18,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Yenidən göndər',
                // style: AppTextStyle.resendTextStyle
              ),
            )
          ],
        ),
      ),
    );
  }
}
