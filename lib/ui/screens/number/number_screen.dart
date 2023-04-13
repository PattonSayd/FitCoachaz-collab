import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/router/app_routes.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import 'number_components.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  late final TextEditingController _numberController;
  late final FocusNode _numberFocus;
  final _formKey = GlobalKey<FormState>();
  late String number;

  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _numberController = TextEditingController();
    _numberFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _numberController.dispose();
    _numberFocus.dispose();
  }

  void _onChangeField(String value) {
    if (value.isNotEmpty && _isActive) return;

    setState(() => _isActive = _numberController.text.isNotEmpty);
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
              child: NumberInput(
                controller: _numberController,
                focus: _numberFocus,
                keyboardType: TextInputType.phone,
                onChanged: _onChangeField,
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
              isActive: _isActive,
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, AppRoutesName.otp);
                }
                FocusScope.of(context).unfocus();
                _numberController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
