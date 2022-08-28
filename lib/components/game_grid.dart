import 'package:flutter/material.dart';

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
          mainAxisExtent: 80,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Center(child: Text(index.toString())),
          );
        });
  }
}
