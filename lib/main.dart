import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:taskly/pages/home_page.dart';

void main() async {
  await Hive.initFlutter('hive');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskly',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}
