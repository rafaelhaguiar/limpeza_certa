import 'package:flutter/material.dart';
import 'package:limpeza_certa/app/features/splash/view/splash_screen.dart';

enum AppRoute {
  splash(url: '/'),
  auth(url: '/auth'),
  home(url: '/home');

  const AppRoute({required this.url});
  final String url;
}

final routes = <String, Widget Function(BuildContext)>{
  AppRoute.splash.url: (context) => const SplashScreen(),
};
