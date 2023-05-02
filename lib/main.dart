import 'package:firebase_core/firebase_core.dart';
import 'package:fitcoachaz/data/storage/sharedPrefs/key_value_store.dart';
import 'package:fitcoachaz/data/storage/sharedPrefs/shared_prefs.dart';
import 'package:fitcoachaz/service_locator.dart';
import 'package:fitcoachaz/ui/bloc/blocs_observer/blocs_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'domain/repositories/congratulation/congratulation_repository.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();

  // final sharedPrefs = SharedPrefs();
  // await sharedPrefs.init();
  // final repos = CongratulationRepository(sharedPrefs: sharedPrefs);

  // final uid = await repos.getUserId();

  // final res = repos.getUserById(uid!);

  Bloc.observer = BlocsObserver();
  runApp(const App());
}
