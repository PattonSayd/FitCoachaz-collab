import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextX on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get deviceSize => MediaQuery.of(this).size;
  ThemeData get deviceTheme => Theme.of(this);

  double get deviceHeight => deviceSize.height;
  double get deviceWidth => deviceSize.width;
}
