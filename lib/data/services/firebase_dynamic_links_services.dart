import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

//     FirebaseDynamicLinks.instance.onLink.listen((event) {
//       logger.wtf('${event.link}');
//     }).onError((error) {
//       logger.wtf('onLink.onError[$error]');
//     });

class FirebaseDynamicLinksServices {
  // late Stream<PendingDynamicLinkData> dynamicLinkStream;

  var acs = ActionCodeSettings(
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
