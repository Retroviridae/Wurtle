import 'package:flutter/material.dart';
import 'package:wurtle/constants/answer_stages.dart';
import 'package:wurtle/models/tile_model.dart';

class Controller extends ChangeNotifier {
  int currentTile = 0, currentRow = 0;
  List<TileModel> tilesEntered = [];

  setKeyTapped({required String value}) {
    if (value == 'ENTER') {
      if (currentTile == 5 * (currentRow + 1)) {
        currentRow++;
        // print('check word');
      }
    } else if (value == 'BACK') {
      if (currentTile > 5 * (currentRow + 1) - 5) {
        currentTile--;
        tilesEntered.removeLast();
      }
    } else {
      if (currentTile < 5 * (currentRow + 1)) {
        tilesEntered.add(
            TileModel(letter: value, answerStage: AnswerStage.notAnswered));
        currentTile++;
      }
    }
    notifyListeners();
  }
}
