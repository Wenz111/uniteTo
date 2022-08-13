import 'package:flutter/material.dart';
import 'package:uniteto/constants/routes.dart';
import 'package:uniteto/screens/pikachu.dart';
import 'package:uniteto/screens/home.dart';

Map<String, WidgetBuilder> routes() {
  return {
    Routes.home: (context) => const HomeScreen(),
    Routes.pikachu: (context) => const PikachuScreen(),
  };
}
