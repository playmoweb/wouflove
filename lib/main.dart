import 'package:flutter/material.dart';
import 'package:wouflove/src/models/animal.dart';
import 'package:wouflove/src/constants.dart';
import 'package:wouflove/src/theme.dart';
import 'package:wouflove/src/ui/widgets/stories.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wouflove",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        actions: [
          Icon(
            Icons.add_photo_alternate_outlined,
            color: WoufTheme.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Stories()
          ],
        ),
      ),
    );
  }
}