import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScopeHome extends StatefulWidget {
  @override
  State<ScopeHome> createState() => _ScopeHomeState();
}

class _ScopeHomeState extends State<ScopeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
        centerTitle: true,
      ),
    );
  }
}
