import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wurtle/providers/theme_provider.dart';
import '../components/game_grid.dart';
import '../components/keyboard_row.dart';
import '../constants/words.dart';
import '../providers/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _word;

  @override
  void initState() {
    final r = Random().nextInt(words.length);
    _word = words[r];
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<Controller>(context, listen: false)
          .setCorrectWord(word: _word);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wurtle'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).setTheme();
            },
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 9 / 16,
          child: Column(
            children: [
              const Divider(
                thickness: 2,
                height: 1,
              ),
              const Expanded(
                flex: 7,
                child: GameGrid(),
              ),
              Expanded(
                flex: 4,
                child: Column(children: const [
                  KeyBoardRow(min: 1, max: 10),
                  KeyBoardRow(min: 11, max: 19),
                  KeyBoardRow(min: 20, max: 29),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
