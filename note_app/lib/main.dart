import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/home_screen.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('names');
  runApp(noteApp());
}

class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}