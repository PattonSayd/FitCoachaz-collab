import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart';
import 'package:fitcoachaz/ui/screens/register/register_components.dart';

import '../../../app/router/app_routes.dart';
import '../../../logger.dart';
import '../../formz/phone_field/phone_field_bloc.dart';
import '../../style/app_text_style.dart';
import '../../widgets/global_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    logger.wtf("buildiw");
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20)
              .copyWith(top: context.deviceHeight / 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneFieldBloc, PhoneFieldState>(
      builder: (context, state) {
        logger.w('input');
        return PhoneInput(
          initialValue: state.phone.value,
          seletedPrefix: state.prefix,
          hintText: 'Phone number',
          errorText: state.isNotValid ? state.phone.displayError : null,
          focus: _focusNode,
          keyboardType: TextInputType.phone,
          onChanged: (value) {
            context.read<PhoneFieldBloc>().add(PhoneFieldEvent(
                  phone: value,
                ));
          },
          onSelected: (prefix) {
            context.read<PhoneFieldBloc>().add(PrefixEvent(prefix: prefix));
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
    logger.w('confirm');
    bool loading = false;
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        logger.w('Listening');
        if (state is RegisterStateOTPSentSuccess) {
          Navigator.pushNamed(context, AppRoutesName.otp);
        }
      },
      builder: (context, regState) {
        if (regState is RegisterStateLoading) loading = true;
        return BlocBuilder<PhoneFieldBloc, PhoneFieldState>(
          buildWhen: (previous, current) => current.isValid != previous.isValid,
          builder: (context, state) {
            return GlobalButton2(
              loading: loading,
              onPressed: state.isValid && !loading
                  ? () => context.read<RegisterBloc>().add(SendOTPToPhoneEvent(
                      number: state.prefix + state.phone.value))
                  : null,
            );
          },
        );
      },
    );
  }
}


  // void _onSubmitted(NetworkConnectivityState networkState) {
  //   switch (networkState.type) {
  //     case NetworkConnectivityType.unknown:
  //       Fluttertoast.showToast(
  //           msg: 'No internet connection',
  //           fontSize: 18,
  //           backgroundColor: AppColors.brightBlue,
  //           textColor: AppColors.grey,
  //           gravity: ToastGravity.TOP);
  //       break;
  //     case NetworkConnectivityType.connected:
  //       context.read<RegisterBloc>().add(SendOTPToPhoneEvent(
  //           number: selectedPrefix + _numberController.text));

  //       break;

  //     default:
  //   }
  // }