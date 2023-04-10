import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/widgets/global_start_button.dart';
import 'package:flutter/material.dart';

import '../../../app/router/app_routes.dart';
import '../../style/text_style.dart';
import '../../theme/app_colors.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Container(
                  color: AppColors.lightGreen77,
                  height: 181,
                ),
                 Text("${context.localizations.welcomeMessage} , Nazrin!",style: AppTextStyle.user,),
                   const SizedBox(height: 12),
                 Text( context.localizations.welcomeUserMessage,
                 textAlign: TextAlign.center,
                 style: AppTextStyle.welcomeUserText,),
               const SizedBox(height: 367,),
                GlobalStartButton(
                    text: context.localizations.startButtom,
                    style: AppTextStyle.startButton,
                    onPress: () {
                      Navigator.pushNamed(context, AppRoutesName.main);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
