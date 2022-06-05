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
  int num = 0;
  void increaseNum() {
    setState(() {
      num++;
    });
  }

  void decreaseNum() {
    setState(() {
      num--;
    });
  }

  void resetNum() {
    setState(() {
      num = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNum,
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
              num.toString(),
              style: TextStyle(
                color: Colors.green,
                fontSize: 125,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: const Text(
                    "Increase",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: increaseNum,
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: const Text(
                    "Increase",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: decreaseNum,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
