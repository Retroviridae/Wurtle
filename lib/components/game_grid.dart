import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wurtle/animations/bounce.dart';
import '../providers/controller.dart';
import 'tile.dart';

class GameGrid extends StatelessWidget {
  const GameGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(36, 20, 36, 20),
      itemCount: 30,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 4,
        mainAxisExtent: 85,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Consumer<Controller>(
          builder: ((_, notifier, __) {
            bool animate = false;
            if (index == notifier.currentTile - 1 && !notifier.isBackorEnter) {
              animate = true;
            }
            return Bounce(
              animate: animate,
              child: Tile(index: index),
            );
          }),
        );
      },
    );
  }
}
