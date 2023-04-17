import 'dart:io';
import 'dart:math';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/bloc/network_connectivity/network_connectivity_cubit.dart';
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart';
import 'package:fitcoachaz/ui/screens/register/register_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../app/router/app_routes.dart';
import '../../../logger.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final TextEditingController _numberController;
  late final FocusNode _numberFocus;
  String? _errorText;
  bool _isActive = false;
  bool _loading = false;
  String seletedPrefix = '+994';

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

  void _onSubmitted(NetworkConnectivityState networkState) {
    switch (networkState.type) {
      case NetworkConnectivityType.unknown:
        Fluttertoast.showToast(
            msg: 'No internet connection',
            fontSize: 18,
            backgroundColor: AppColors.brightBlue,
            textColor: AppColors.grey,
            gravity: ToastGravity.TOP);
        break;
      case NetworkConnectivityType.connected:
        final phoneNum = _numberController.text;
        final bool contains51InBrackets =
            RegExp(r"\(50\)|\(51\)|\(55\)|\(77\)|\(70\)|\(10\)\(99\)")
                .hasMatch(phoneNum);
        if (phoneNum.length < 12) {
          _errorText = 'Wrong length';
        } else if (!contains51InBrackets) {
          _errorText = 'Field is wrong';
        } else {
          _errorText = null;
          context.read<RegisterBloc>().add(SendOTPToPhoneRegisterEvent(
              number: seletedPrefix + _numberController.text));
        }
        setState(() {});
        break;

      default:
    }
  }

  void _onChangeField(String value) {
    if (value.isNotEmpty && _isActive) return;

    setState(() => _isActive = _numberController.text.isNotEmpty);
  }

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
              SizedBox(
                height: 47.h,
              ),
              NumberInput(
                seletedPrefix: seletedPrefix,
                errorText: _errorText,
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
                onSelected: (prefix) {
                  setState(() {
                    seletedPrefix = prefix;
                  });
                },
              ),
              SizedBox(
                height: 22.h,
              ),
              BlocConsumer<RegisterBloc, RegisterState>(
                listener: (context, state) {
                  if (state is RegisterStateOTPSentSuccess) {
                    Navigator.pushNamed(context, AppRoutesName.otp);
                  }
                },
                builder: (context, state) {
                  if (state is RegisterStateLoading) {
                    _loading = true;
                    _isActive = false;
                  } else if (state is RegisterStateError) {
                    _loading = false;
                    _isActive = true;
                    Fluttertoast.showToast(
                        msg: state.error,
                        fontSize: 18,
                        backgroundColor: AppColors.brightBlue,
                        textColor: AppColors.grey,
                        gravity: ToastGravity.TOP);
                  }
                  return BlocBuilder<NetworkConnectivityCubit,
                      NetworkConnectivityState>(
                    builder: (context, networkState) {
                      return GlobalButton(
                        isActive: _isActive,
                        loading: _loading,
                        onPress: () => _onSubmitted(networkState),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
