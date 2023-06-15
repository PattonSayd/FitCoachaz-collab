import 'package:fitcoachaz/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart';
import 'package:fitcoachaz/ui/screens/register/register_components.dart';
import 'package:formz/formz.dart';

import '../../../app/router/app_routes.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/button_component.dart';
import '../../widgets/info_popup_component.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Text(
                context.localizations.enterNumber,
                style: AppTextStyle.bigHeader,
              ),
              SizedBox(height: 47.h),
              const Input(),
              SizedBox(height: 22.h),
              const ConfirmButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class Input extends StatefulWidget {
  const Input({
    Key? key,
  }) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        context.read<RegisterBloc>().add(const RegisterEvent.phoneUnfocused());
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        logger.i(
            '$state -> hasCode: ${state.hashCode}, runtimeType ${state.runtimeType}');
        return PhoneField(
          seletedPrefix: state.prefix,
          hintText: 'Phone number',
          errorText: state.phoneField.isNotValid
              ? state.phoneField.displayError
              : null,
          focus: _focusNode,
          keyboardType: TextInputType.phone,
          onChanged: (value) {
            context
                .read<RegisterBloc>()
                .add(RegisterEvent.phoneChanged(phone: value));
          },
          onSelected: (prefix) {
            context
                .read<RegisterBloc>()
                .add(RegisterEvent.phoneChangedPrefix(prefix: prefix));
          },
        );
      },
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        logger.i('LISENER $state -> hasCode: ${state.hashCode}');
        state.registerStatus == RegisterStatus.otpSentSuccess
            ? Navigator.pushReplacementNamed(context, AppRoutesName.otp,
                arguments: {
                    'phoneNumber': state.phoneNumber,
                    'verificationId': state.verificationId
                  })
            : state.registerStatus == RegisterStatus.error
                ? showDialog(
                    context: context,
                    builder: (context) =>
                        UnifiedInfoPopup(alertText: state.error),
                  )
                : null;
      },
      buildWhen: (pre, curr) => pre.submissionStatus != curr.submissionStatus,
      builder: (context, state) {
        logger.i('BUILDER $state -> hasCode: ${state.hashCode}');
        return ButtonComponent(
          onPressed: state.submissionStatus == FormzSubmissionStatus.initial
              ? () {
                  context.read<RegisterBloc>().add(RegisterEvent.sendOTPToPhone(
                      number: state.prefix + state.phoneField.value));
                  FocusScope.of(context).unfocus();
                }
              : null,
          child: state.submissionStatus == FormzSubmissionStatus.inProgress
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.silver),
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  context.localizations.confirmText,
                  style: AppTextStyle.verifyButton,
                ),
        );
      },
    );
  }
}
