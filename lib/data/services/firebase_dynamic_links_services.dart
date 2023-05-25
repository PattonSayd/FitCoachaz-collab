import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

import '../../app/assemble/assemble.dart';

class FirebaseDynamicLinksServices {
  var acs = ActionCodeSettings(
    // androidInstallApp: false,
    url: 'https://fitcoachaz.page.link/emailredirect',
    handleCodeInApp: true,
    iOSBundleId: 'com.example.fitcoachaz',
    androidPackageName: 'com.example.fitcoachaz',
    androidMinimumVersion: '12',
  );

  Stream<PendingDynamicLinkData> handleDynamicLinkStream() {
    return FirebaseDynamicLinks.instance.onLink;
  }
}
