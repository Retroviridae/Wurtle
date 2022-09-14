// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:wurtle/data/keys_map.dart';

class KeyBoardRow extends StatelessWidget {
  const KeyBoardRow({
    required this.min,
    required this.max,
    Key? key,
  }) : super(key: key);

  final int min, max;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int index = 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: keysMap.entries.map((e) {
        index++;
        if (index >= min && index <= max) {
          return Padding(
            padding: EdgeInsets.all(size.width * 0.006),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                color: Colors.grey,
                width: e.key == 'ENTER' || e.key == 'BACK'
                    ? size.width * 0.13
                    : size.width * 0.085,
                height: size.height * 0.090,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(e.key),
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      }).toList(),
    );
  }
}
