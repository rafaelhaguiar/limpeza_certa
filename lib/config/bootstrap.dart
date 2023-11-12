import 'package:flutter/material.dart';
import 'package:limpeza_certa/config/app_database.dart';
import 'package:limpeza_certa/config/app_widget.dart';
import 'package:limpeza_certa/config/depedency_injection.dart';

void bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  final databaseInstance = await SqliteHelper.instance;

  initDependencyInjection(database: databaseInstance);
  runApp(const AppWidget());
}
