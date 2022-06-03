import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "Score is",
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "0",
              style: TextStyle(
                color: Colors.green,
                fontSize: 90,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  
                ),
                child: Text("Increase"),\
                onPressed: (){},

              )
            ],
          )
        ],
      ),
    );
  }
}
