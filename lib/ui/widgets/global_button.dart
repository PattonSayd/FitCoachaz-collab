import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalButton extends StatelessWidget {
  final String text;
  final TextStyle buttonStyle;
  final Function onPress;
  final Color backgroundColor;
  const GlobalButton({
    Key? key,
    required this.text,
    required this.buttonStyle,
    required this.onPress,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 200,
        maxWidth: 342,
        maxHeight: 44,
        minHeight: 35,
      ),
      width: 342.w,
      height: 44.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(top: 13, left: 16, right: 16, bottom: 13).r,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () => onPress(),
        child: Text(
          text,
          style: buttonStyle,
        ),
      ),
    );
  }
}
