import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/router/app_routes.dart';
import '../../style/text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import '../../widgets/global_passw_input.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  late final TextEditingController passwController;
  late final TextEditingController rePasswController;
  late final FocusNode passwFocus;
  late final FocusNode rePasswFocus;
  final _formKey = GlobalKey<FormState>();
  late String number;

  @override
  void initState() {
    super.initState();
    passwController = TextEditingController();
    rePasswController = TextEditingController();
    passwFocus = FocusNode();
    rePasswFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    passwController.dispose();
    rePasswController.dispose();
    passwFocus.dispose();
    rePasswFocus.dispose();
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
        child: Form(
          key: _formKey,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.localizations.createPassw,
                style: AppTextStyle.bigHeader,
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(context.localizations.choosePassw,
              style: AppTextStyle.choosePassw,
              textAlign: TextAlign.start,),
               SizedBox(
                height: 20.h,
              ),
              GlobalPasswordInput(
                controller: passwController,
                obscureText: true,
                focus: passwFocus,
                labelText: context.localizations.password,
                onChanged: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.localizations.nullPassw;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 24.h,
              ),
               GlobalPasswordInput(
                 controller: rePasswController,
                 obscureText: true,
                 focus: rePasswFocus,
                 suffixIcon: GestureDetector(
                  onTap:(){
                    rePasswController.clear();
                  },
                  child: const Icon(Icons.cancel)),
                 labelText: context.localizations.repeatPassw,
                 onChanged: (value) {},
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return context.localizations.nullPassw;
                   }  
                   if(value != passwController.text){
                    return  context.localizations.checkPassw;
                 }
                   
                 },
               ),
               SizedBox(
                height: 24.h,
              ),
              GlobalButton(
                backgroundColor: AppColors.lightGreen,
                buttonStyle: AppTextStyle.activeButton,
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
      ),
    );
  }
}
