import 'package:fitcoachaz/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart';
import 'package:formz/formz.dart';

import '../../../app/router/app_routes.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import '../../widgets/notification_window.dart';

class AccountNameScreen extends StatefulWidget {
  const AccountNameScreen({super.key});

  @override
  State<AccountNameScreen> createState() => _AccountNameScreenState();
}

class _AccountNameScreenState extends State<AccountNameScreen> {
  final _nameFocus = FocusNode();
  final _surnFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _nameFocus.addListener(() {
      if (!_nameFocus.hasFocus) {
        context.read<AccountNameBloc>().add(NameUnfocusedEvent());
        FocusScope.of(context).requestFocus(_surnFocus);
      }
    });
    _surnFocus.addListener(() {
      if (!_surnFocus.hasFocus) {
        context.read<AccountNameBloc>().add(SurnUnfocusedEvent());
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nameFocus.dispose();
    _surnFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutesName.welcome,
              (route) => false,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.h),
              Text(
                context.localizations.userNameText,
                style: AppTextStyle.bigHeader,
              ),
              SizedBox(height: 40.h),
              Text(
                context.localizations.idText,
                style: AppTextStyle.choosePassw,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 20.h),
              BlocBuilder<AccountNameBloc, AccountNameState>(
                builder: (context, state) {
                  return _AccountNameField(
                    initialValue: state.name.value,
                    focusNode: _nameFocus,
                    hintText: 'Enter your name',
                    errorText:
                        state.name.isNotValid ? state.name.displayError : null,
                    onChanged: (v) => context
                        .read<AccountNameBloc>()
                        .add(NameChangedEvent(name: v)),
                  );
                },
              ),
              SizedBox(height: 24.h),
              BlocBuilder<AccountNameBloc, AccountNameState>(
                builder: (context, state) {
                  return _AccountNameField(
                    initialValue: state.surn.value,
                    focusNode: _surnFocus,
                    hintText: 'Enter your surname',
                    errorText:
                        state.surn.isNotValid ? state.surn.displayError : null,
                    onChanged: (v) => context
                        .read<AccountNameBloc>()
                        .add(SurnChangedEvent(surn: v)),
                  );
                },
              ),
              SizedBox(height: 24.h),
              BlocConsumer<AccountNameBloc, AccountNameState>(
                listener: (context, state) {
                  if (state.status.isSuccess) {
                    Navigator.pushReplacementNamed(
                        context, AppRoutesName.congratulation);
                  } else if (state.status.isFailure) {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          NotificationWindow(alertText: state.error!),
                    );
                  }
                },
                buildWhen: (p, c) => p.status != c.status,
                builder: (context, state) {
                  return GlobalButton(
                    onPressed: state.status.isInitial
                        ? () {
                            context
                                .read<AccountNameBloc>()
                                .add(FormsSubmittedEvent());
                          }
                        : null,
                    child: _buildButtonChild(context, state.status),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonChild(BuildContext ctx, FormzSubmissionStatus status) =>
      status.isInProgress
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.silver),
                strokeWidth: 2,
              ),
            )
          : Text(
              ctx.localizations.confirmText,
              style: AppTextStyle.verifyButton,
            );
}

class _AccountNameField extends StatelessWidget {
  const _AccountNameField({
    Key? key,
    required this.initialValue,
    required this.focusNode,
    required this.hintText,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  final String? initialValue;
  final FocusNode focusNode;
  final String hintText;
  final String? errorText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) => TextFormField(
      initialValue: initialValue,
      focusNode: focusNode,
      keyboardType: TextInputType.emailAddress,
      cursorColor: AppColors.darkGrey,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        errorText: errorText,
        hintText: hintText,
        labelStyle: AppTextStyle.labelText,
        errorStyle: TextStyle(
          fontSize: 14.spMin,
          color: AppColors.pink,
        ),
      ),
      onChanged: onChanged);
}
