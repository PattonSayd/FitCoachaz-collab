import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../app/config.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

var maskFormatter = MaskTextInputFormatter(
  mask: '(##) ### ## ##',
  filter: {"#": RegExp(r'[0-9]')},
);

class PhoneInput extends StatelessWidget {
  final String? initialValue;
  final FocusNode focus;
  final void Function(String) onChanged;
  final void Function(String)? onSelected;
  final String seletedPrefix;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const PhoneInput({
    Key? key,
    required this.focus,
    required this.onChanged,
    required this.onSelected,
    required this.seletedPrefix,
    this.initialValue,
    this.errorText,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      inputFormatters: [maskFormatter],
      obscureText: obscureText,
      onChanged: onChanged,
      autofocus: true,
      keyboardType: keyboardType,
      focusNode: focus,
      cursorColor: AppColors.darkGrey,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 10,
        ),
        errorText: errorText,
        hintText: hintText,
        labelText: labelText,
        labelStyle: AppTextStyle.labelText,
        errorStyle: TextStyle(
          fontSize: 14.spMin,
          color: AppColors.pink,
        ),
        prefix: PopupMenuButton(
          offset: const Offset(-15, -15),
          onSelected: onSelected,
          child: SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(seletedPrefix),
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          ),
          itemBuilder: (context) => phonePrefix
              .map((prefix) => PopupMenuItem(
                    height: 40,
                    value: prefix,
                    child: Align(child: Text(prefix)),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

// class CustomPopupMenuItem<T> extends PopupMenuItem<T> {
//   final String text;
//   final IconData icon;
//   final Color textColor;
//   final Color iconColor;
//   final VoidCallback onTap;

//   CustomPopupMenuItem({
//     super.key,
//     required this.text,
//     required this.icon,
//     this.textColor = Colors.black87,
//     this.iconColor = Colors.black87,
//     required this.onTap,
//   }) : super(
//           child: Container(
//             padding: EdgeInsets.all(12.0),
//             child: Row(
//               children: [
//                 Icon(
//                   icon,
//                   color: iconColor,
//                 ),
//                 SizedBox(width: 16.0),
//                 Text(
//                   text,
//                   style: TextStyle(
//                     color: textColor,
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           onTap: onTap,
//         );
// }
