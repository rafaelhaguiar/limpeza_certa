import 'package:flutter/material.dart';

enum Route {
  splash(url: '/'),
  login(url: '/login'),
  home(url: '/home');

  const Route({required this.url});
  final String url;
}

final routes = <String, Widget Function(BuildContext)>{};
