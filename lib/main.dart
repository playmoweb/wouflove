import 'package:flutter/material.dart';
import 'package:wouflove/src/theme.dart';
import 'package:wouflove/src/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wouflove',
      theme: WoufTheme.theme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
