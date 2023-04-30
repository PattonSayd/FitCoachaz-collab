import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/email/email_bloc.dart';

import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../widgets/global_button.dart';
import '../../widgets/notification_window.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final _focusNode = FocusNode();
  final _contoller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        context.read<EmailBloc>().add(EmailUnfocused(email: _contoller.text));
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _contoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100.h),
                Text(
                  context.localizations.createPassw,
                  style: AppTextStyle.bigHeader,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  context.localizations.choosePassw,
                  style: AppTextStyle.choosePassw,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20.h,
                ),
                _EmailField(controller: _contoller, focusNode: _focusNode),
                SizedBox(
                  height: 24.h,
                ),
                Align(
                  child: BlocConsumer<EmailBloc, EmailState>(
                    listener: (context, state) => _listenMethod(state, context),
                    buildWhen: (prev, cnt) => prev.status != cnt.status,
                    builder: (context, state) {
                      logger.i(state);
                      return GlobalButton2(
                        onPressed: state.status == EmailStatus.valid
                            ? () => _onSubmitted(context, _contoller.text)
                            : null,
                        child: _buildButtonChild(context, state),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonChild(BuildContext ctx, EmailState state) =>
      state.status == EmailStatus.loading
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

  void _onSubmitted(
    BuildContext ctx,
    String email,
  ) {
    FocusScope.of(ctx).unfocus();
    ctx.read<EmailBloc>().add(EmailSubmitted(email: email));
  }

  void _listenMethod(EmailState state, BuildContext context) {
    if (state.status == EmailStatus.success) {
      Navigator.pushReplacementNamed(context, AppRoutesName.user);
    } else if (state.status == EmailStatus.error) {
      showDialog(
        context: context,
        builder: (context) => NotificationWindow(alertText: state.error!),
      );
    }
  }
}

class _EmailField extends StatelessWidget {
  const _EmailField({
    Key? key,
    required this.focusNode,
    required this.controller,
  }) : super(key: key);

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmailBloc, EmailState>(
      builder: (context, state) {
        return TextFormField(
          focusNode: focusNode,
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          cursorColor: AppColors.darkGrey,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            errorText: state.status == EmailStatus.invalid
                ? 'Enter correct email address'
                : null,
            hintText: 'Enter your email address',
            labelStyle: AppTextStyle.labelText,
            errorStyle: TextStyle(
              fontSize: 14.spMin,
              color: AppColors.pink,
            ),
          ),
          onChanged: (value) =>
              context.read<EmailBloc>().add(EmailChanged(email: value)),
        );
      },
    );
  }
}
