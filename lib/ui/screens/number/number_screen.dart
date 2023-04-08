import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/router/app_routes.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import '../../widgets/global_num_input.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  late final TextEditingController numberController;
  late final FocusNode numberFocus;
  final _formKey = GlobalKey<FormState>();
  late String number;

  @override
  void initState() {
    super.initState();
    numberController = TextEditingController();
    numberFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    numberController.dispose();
    numberFocus.dispose();
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
              context.localizations.enterNumber,
              style: AppTextStyle.bigHeader,
            ),
             SizedBox(
              height: 47.h,
            ),
            Form(
              key: _formKey,
              child: GlobalNumberInput(
                controller: numberController,
                focus: numberFocus,
                keyboardType: TextInputType.phone,
                onChanged: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.localizations.enterNumber;
                  }
                  return null;
                },
              ),
            ),
             SizedBox(
              height: 22.h,
            ),
            GlobalButton(
              backgroundColor: AppColors.brightSilver,
              buttonStyle: AppTextStyle.deactiveButton,
              text: context.localizations.confirmText,
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, AppRoutesName.otp);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
