import 'package:flutter_game/button.dart';
import 'package:flutter_game/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

class Logic {
  late WidgetRef _ref;
  double time = 0;
  double height = 0;
  double initialheight = 0;
  String direction = "right";
  bool run = false;
  bool jump = false;

  void setRef(WidgetRef ref) {
    _ref = ref;
  }

  void moveLeft() {
    direction = "left";
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (Button().userIsHoldingButton() == true 
      && _ref.watch(indexA.state).update((state) => state-0.02) > -1) {
        run = !run;
        _ref.watch(indexA.state).update((state) => state - 0.02);
      } else {
        timer.cancel();
      }
    });
  }

  void moveRight() {
    direction = "right";
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (Button().userIsHoldingButton() == true 
      && _ref.watch(indexA.state).update((state) => state+0.02) < 1) {
        run = !run;
        _ref.watch(indexA.state).update((state) => state + 0.02);
      } else {
        timer.cancel();
      }
    });
  }

  void preJump() {
    //print(direction);
    jump = true;
    time = 0;
    initialheight = _ref.watch(indexB);
  }

  void moveUp() {
    if (jump == false) {
      jump = true;
      preJump();
      Timer.periodic(const Duration(milliseconds: 50), (timer) {
        time += 0.05;
        height = -4.9 * time * time + 5 * time;

        if (initialheight - height > 1) {
          jump = false;
          _ref.read(indexB.state).update((state) => 1);
          timer.cancel();
        } else {
          _ref.read(indexB.state).update((state) => initialheight - height);
        }
      });
    }
  }
}
