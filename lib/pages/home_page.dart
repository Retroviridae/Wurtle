import 'package:flutter/material.dart';
import '../components/game_grid.dart';
import '../components/keyboard_row.dart';

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
                  color: Colors.yellow,
                  child: const GameGrid(),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                  child: Column(children: const [
                    KeyBoardRow(min: 1, max: 10),
                    KeyBoardRow(min: 11, max: 19),
                    KeyBoardRow(min: 20, max: 29),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
