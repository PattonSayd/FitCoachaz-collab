import 'package:fitcoachaz/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart';

import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';

class AccountNameScreen extends StatefulWidget {
  const AccountNameScreen({super.key});

  @override
  State<AccountNameScreen> createState() => _AccountNameScreenState();
}

class _AccountNameScreenState extends State<AccountNameScreen> {
  final _nameCtrl = TextEditingController();
  final _surnCtrl = TextEditingController();
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
    _nameCtrl.dispose();
    _surnCtrl.dispose();
    _nameFocus.dispose();
    _surnFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              BlocSelector<AccountNameBloc, AccountNameState, Formify>(
                selector: (state) => state.name,
                builder: (context, state) {
                  return _AccountNameField(
                    focusNode: _nameFocus,
                    controller: _nameCtrl,
                    hintText: 'Enter your name',
                    errorText: state.valid ? null : state.msg,
                    onChanged: (v) => context
                        .read<AccountNameBloc>()
                        .add(NameChangedEvent(name: v)),
                  );
                },
              ),
              SizedBox(height: 24.h),
              BlocSelector<AccountNameBloc, AccountNameState, Formify>(
                selector: (state) => state.surn,
                builder: (context, state) {
                  logger.i(state);
                  return _AccountNameField(
                    focusNode: _surnFocus,
                    controller: _surnCtrl,
                    hintText: 'Enter your surname',
                    errorText: state.valid ? null : state.msg,
                    onChanged: (v) => context
                        .read<AccountNameBloc>()
                        .add(SurnChangedEvent(surn: v)),
                  );
                },
              ),
              SizedBox(height: 24.h),
              BlocBuilder<AccountNameBloc, AccountNameState>(
                builder: (context, state) {
                  return GlobalButton2(
                    onPressed:
                        state.name.valid && state.surn.valid ? () {} : null,
                    child: Text(
                      context.localizations.confirmText,
                      style: AppTextStyle.verifyButton,
                    ),
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

class _AccountNameField extends StatelessWidget {
  const _AccountNameField({
    Key? key,
    required this.focusNode,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  final FocusNode focusNode;
  final TextEditingController controller;
  final String hintText;
  final String? errorText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) => TextFormField(
      focusNode: focusNode,
      controller: controller,
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
