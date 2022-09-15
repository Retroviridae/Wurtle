// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wurtle/constants/answer_stages.dart';
import 'package:wurtle/constants/colors.dart';
import 'package:wurtle/controller.dart';
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

    return FittedBox(
      fit: BoxFit.contain,
      child: Consumer<Controller>(
        builder: (_, notifier, __) {
          int index = 0;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: keysMap.entries.map((e) {
              index++;
              if (index >= min && index <= max) {
                Color color = Theme.of(context).primaryColorLight;
                Color keyColor = Colors.white;
                if (e.value == AnswerStage.correct) {
                  color = correctGreen;
                } else if (e.value == AnswerStage.contains) {
                  color = containsYellow;
                } else if (e.value == AnswerStage.incorrect) {
                  color = Theme.of(context).primaryColorDark;
                } else {
                  keyColor = Theme.of(context).textTheme.bodyText2?.color ??
                      Colors.black;
                }
                return Padding(
                  padding: const EdgeInsets.all(1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: SizedBox(
                      width: e.key == 'ENTER' || e.key == 'BACK' ? 100 : 40,
                      height: size.height * 0.090,
                      child: Material(
                        color: color,
                        child: InkWell(
                          onTap: () {
                            Provider.of<Controller>(context, listen: false)
                                .setKeyTapped(value: e.key);
                          },
                          child: Center(
                            child: Text(
                              e.key,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color: keyColor,
                                  ),
                            ),
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
        },
      ),
    );
  }
}
