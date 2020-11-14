import 'package:fitness_app/ui/theme/theme.dart';
import 'package:fitness_app/ui/views/main/main_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: appTheme(),
      home: MainView(),
    );
  }
}
