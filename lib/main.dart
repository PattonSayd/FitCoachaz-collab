import 'package:firebase_core/firebase_core.dart';
import 'package:fitcoachaz/service_locator.dart';
import 'package:fitcoachaz/ui/bloc/blocs_observer/blocs_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'data/storage/sharedPrefs/key_value_store.dart';
import 'data/storage/sharedPrefs/shared_prefs.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  Bloc.observer = BlocsObserver();
  runApp(const App());
}
