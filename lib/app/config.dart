import 'package:firebase_auth/firebase_auth.dart';

const String appName = 'Fit Coach';

const List<String> phonePrefix = ['+994'];
const int resendTime = 60;
const otpLength = 6;

final acs = ActionCodeSettings(
  url: 'https://fitcoachaz.page.link/emailredirect',
  handleCodeInApp: true,
  iOSBundleId: 'com.example.fitcoachaz',
  androidPackageName: 'com.example.fitcoachaz',
  androidMinimumVersion: '12',
);
