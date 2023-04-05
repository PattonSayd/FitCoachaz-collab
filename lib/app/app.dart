import 'package:fitcoachaz/ui/style/text_style.dart';
import 'package:fitcoachaz/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: false,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
            builder: (context, child) {
              final tsf = MediaQuery.textScaleFactorOf(context);
              return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaleFactor: tsf.clamp(0.85, 1.3)),
                child: child ?? const SizedBox.shrink(),
              );
            },
            title: 'Fit Coach',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            initialRoute: AppRoutesName.main,
            routes: AppRoutes.routes,
          );
        });
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: Text(
            AppLocalizations.of(context)!.buttomText,
            style: AppTextStyle.miniHeaderTextStyle,
          ),
        ),
      ),
    );
  }
}
