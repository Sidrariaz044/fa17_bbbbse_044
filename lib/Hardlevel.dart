import 'package:flutter/material.dart';

class HardLevel extends StatefulWidget {
  @override
  _HardLevelState createState() => _HardLevelState();
}

class _HardLevelState extends State<HardLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[210],
      appBar: AppBar(
        title: Text('Hard Level'),
      ),
    );;
  }
}
