import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// appBar is a property of Scaffold
  /// body is a property of Scaffold
  /// floatingActionButton is a property of Scaffold
  /// bottomNavigationBar is a property of Scaffold
  /// drawer is a property of Scaffold
  /// endDrawer is a property of Scaffold
  /// backgroundColor is a property of Scaffold
  ///
  var rotationZ = 0.0;
  Color _randomColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
      ),
      body: Center(
        child: Container(
          transform: Matrix4.rotationZ(rotationZ.toDouble()),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: _randomColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 10,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Timer.periodic(Duration(microseconds: 500), (timer) {
            setState(() {
              rotationZ += 0.1;
              _randomColor =
                  Colors.primaries[Random().nextInt(Colors.primaries.length)];
              print(rotationZ);

              /// set auto duration is 1 second plus 1
            });
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
