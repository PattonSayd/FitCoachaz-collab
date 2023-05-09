import 'package:firebase_core/firebase_core.dart';
import 'package:fitcoachaz/ui/bloc/blocs_observer/blocs_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'app/assemble/assemble.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  Bloc.observer = BlocsObserver();
  runApp(const App());
}
