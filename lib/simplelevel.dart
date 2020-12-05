import 'package:flutter/material.dart';
class SimpleLevel extends StatefulWidget {
  @override
  _SimpleLevelState createState() => _SimpleLevelState();
}

class _SimpleLevelState extends State<SimpleLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[210],
      appBar: AppBar(
        title: Text('Simple Level'),
      ),
    );
  }
}