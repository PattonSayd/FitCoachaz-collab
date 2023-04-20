import 'package:fitcoachaz/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart';
import 'package:fitcoachaz/ui/screens/register/register_components.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../app/router/app_routes.dart';
import '../../formz/phone_field/phone_field_bloc.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    logger.i('buildw');
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 100.h),
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
        logger.i(
            '$state -> hasCode: ${state.hashCode}, runtimeType ${state.runtimeType}');
        return PhoneInput(
          seletedPrefix: state.prefix,
          hintText: 'Phone number',
          errorText: state.phone.isNotValid ? state.phone.displayError : null,
          focus: _focusNode,
          keyboardType: TextInputType.phone,
          onChanged: (value) {
            context.read<PhoneFieldBloc>().add(PhoneFieldEvent(phone: value));
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
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        logger.i(
            'LISENER $state -> hasCode: ${state.hashCode}, runtimeType ${state.runtimeType}');
        if (state is RegisterStateOTPSentSuccess) {
          logger.w('Navigator');
          Navigator.pushNamed(context, AppRoutesName.otp);
        }
        if (state is RegisterStateError) {
          Fluttertoast.showToast(
            msg: state.error,
            fontSize: 18,
            backgroundColor: AppColors.brightBlue,
            textColor: AppColors.grey,
            gravity: ToastGravity.TOP,
          );
        }
      },
      builder: (context, state) {
        logger.i(
            'BUILDER $state -> hasCode: ${state.hashCode}, runtimeType ${state.runtimeType}');
        bool loading = false;
        if (state is RegisterStateLoading) loading = !loading;
        return BlocBuilder<PhoneFieldBloc, PhoneFieldState>(
          buildWhen: (previous, current) =>
              current.phone.isValid != previous.phone.isValid,
          builder: (context, state) {
            logger.i(
                '$state -> hasCode: ${state.hashCode}, runtimeType ${state.runtimeType}');
            return GlobalButton2(
              loading: loading,
              onPressed: state.phone.isValid && !loading
                  ? () {
                      context.read<RegisterBloc>().add(SendOTPToPhoneEvent(
                          number: state.prefix + state.phone.value));
                      FocusScope.of(context).unfocus();
                    }
                  : null,
            );
          },
        );
      },
    );
  }
}
