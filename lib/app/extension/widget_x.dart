import 'package:flutter/cupertino.dart';

extension WidgetX on Widget {
  Widget isVisible(bool value, {double? height, double? width}) =>
      value ? this : SizedBox(height: height, width: width);
}
