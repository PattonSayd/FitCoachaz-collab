import 'dart:async';

import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:fitcoachaz/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class EmailSentSuccessfulScreen extends StatefulWidget {
  const EmailSentSuccessfulScreen({super.key, required this.email});

  final String email;

  @override
  State<EmailSentSuccessfulScreen> createState() =>
      _EmailSentSuccessfulScreenState();
}

class _EmailSentSuccessfulScreenState extends State<EmailSentSuccessfulScreen> {
  int _seconds = 5;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_seconds == 0) {
        timer.cancel();
        navigateToNextScreen();
      } else {
        setState(() {
          _seconds--;
        });
      }
    });
  }

  navigateToNextScreen() {
    Navigator.pushReplacementNamed(
      context,
      AppRoutesName.accountName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Confirmation Email'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Email confirmation link was sent to ',
                  style: TextStyle(color: AppColors.silver),
                ),
                TextSpan(
                  text: widget.email,
                  style: const TextStyle(color: AppColors.darkBlue),
                ),
                TextSpan(
                  text: ' $_seconds',
                  style: const TextStyle(color: AppColors.silver, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
