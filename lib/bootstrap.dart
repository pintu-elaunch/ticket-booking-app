import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function() builder, {
  BlocObserver? observer,
}) async {
  return runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();

    return runApp(await builder());
  });
}
