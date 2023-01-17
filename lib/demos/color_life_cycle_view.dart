import 'package:flutter/material.dart';
import 'package:one/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    const String _text = "Click on the cross for pink background color.";
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: _changeBackground, icon: Icon(Icons.clear))],
      ),
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          Expanded(
              child: const Center(
            child: Text(
              _text,
              style: TextStyle(fontSize: 18),
            ),
          )),
          Expanded(
              child: ColorDemos(
            initialColor: _backgroundColor ?? Colors.transparent,
          ))
        ],
      ),
    );
  }

  void _changeBackground() {
    setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}
