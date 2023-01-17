import 'package:flutter/material.dart';
import 'demos/color_life_cycle_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demolarim',
      theme: ThemeData.dark().copyWith(
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Colors.red,
          cursorColor: Colors.green,
          selectionHandleColor: Colors.black
        ),
        textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.red)),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        )
      ),
      home: const ColorLifeCycleView(),
    );
  }
}
