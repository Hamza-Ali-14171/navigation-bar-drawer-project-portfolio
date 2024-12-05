import 'package:flutter/material.dart';
import 'package:navigation_bar_drawer/pages/abc.dart';
import 'package:navigation_bar_drawer/pages/cool.dart';
import 'package:navigation_bar_drawer/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        Abc.id: (context) => Abc(),
        Cool.id: (context) => Cool(),
      },
    );
  }
}
