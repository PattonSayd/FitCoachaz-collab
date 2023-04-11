import 'package:flutter/material.dart';

class AppButtonStyle {
  AppButtonStyle._();
  static final ButtonStyle textButtonReset = TextButton.styleFrom(
    minimumSize: Size.zero,
    padding: EdgeInsets.zero,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}
