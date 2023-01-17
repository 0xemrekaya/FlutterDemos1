import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      _changeBackgroundColor(widget.initialColor!);
    }
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: "Red"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: "Blue"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: "Yellow"),
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      _changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.blue.index) {
      _changeBackgroundColor(Colors.blue);
    } else if (value == _MyColors.yellow.index) {
      _changeBackgroundColor(Colors.yellow);
    }
  }
}

enum _MyColors { red, blue, yellow }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      color: color,
    );
  }
}
