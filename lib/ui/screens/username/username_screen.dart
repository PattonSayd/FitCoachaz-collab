import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/router/app_routes.dart';
import '../../style/text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import '../password/password_components.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  late final TextEditingController nameController;
  late final TextEditingController surnameController;
  late final FocusNode nameFocus;
  late final FocusNode surnameFocus;
  final _formKey = GlobalKey<FormState>();
  

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    surnameController = TextEditingController();
    nameFocus = FocusNode();
    surnameFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    surnameController.dispose();
    nameFocus.dispose();
    surnameFocus.dispose();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.localizations.userNameText,
                  style: AppTextStyle.bigHeader,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(context.localizations.idText,
                style: AppTextStyle.choosePassw,
                textAlign: TextAlign.start,),
                 SizedBox(
                  height: 20.h,
                ),
                PasswordInput(
                  controller: nameController,
                  obscureText: false,
                  focus: nameFocus,
                  labelText: context.localizations.name,
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return context.localizations.nullName;
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 24.h,
                ),
                 PasswordInput(
                   controller: surnameController,
                   obscureText: false,
                   focus: surnameFocus,
                   labelText: context.localizations.surname,
                   onChanged: (value) {},
                   validator: (value) {
                     if (value == null || value.isEmpty) {
                       return context.localizations.nullSurn;
                     }  
                  return null;
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
                      Navigator.pushNamed(context, AppRoutesName.account);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
