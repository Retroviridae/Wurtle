import 'package:flutter/material.dart';

import '../components/game_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wurtle'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 9 / 16,
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  // margin: const EdgeInsets.all(10), //Adds a white border to the yellow game area
                  color: Colors.yellow,
                  child: const GameGrid(),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
