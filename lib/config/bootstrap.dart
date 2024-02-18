import 'package:flutter/material.dart';
import 'package:limpeza_certa/config/app_widget.dart';
import 'package:limpeza_certa/config/injections.dart';

void bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  initInjections();

  runApp(
    const AppWidget(),
  );
}
