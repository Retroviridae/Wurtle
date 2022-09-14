import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  int currentTile = 0, currentRow = 0;
  setKeyTapped({required String value}) {
    if (value == 'ENTER') {
      if (currentTile == 5 * (currentRow + 1)) {
        currentRow++;
        print('check word');
      }
    } else if (value == 'BACK') {
      if (currentTile > 5 * (currentRow + 1) - 5) {
        currentTile--;
      }
    } else {
      if (currentTile < 5 * (currentRow + 1)) {
        currentTile++;
      }
    }
    print('current tile $currentTile and current row $currentRow');
  }
}
