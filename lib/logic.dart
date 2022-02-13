import 'package:flutter_game/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

class Logic {
  late WidgetRef _ref;
  double time = 0;
  double height = 0;
  double initialheight = 0;
  String direction = "right";

  void setRef(WidgetRef ref) {
    _ref = ref;
  }

  void moveLeft() {
    direction = "left";
    _ref.read(indexA.state).update((state) => state - 0.05);
  }

  void moveRight() {
    direction = "right";
    _ref.read(indexA.state).update((state) => state + 0.05);
  }

  void preJump() {
    time = 0;
    initialheight = _ref.read(indexB);
  }

  void moveUp() {
    preJump();
    Timer.periodic(const Duration(microseconds: 50), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 5 * time;

      if (initialheight - height > 1) {
        _ref.read(indexB.state).update((state) => 1);
      } else {
        _ref.read(indexB.state).update((state) => initialheight - height);
      }
    });
  }
}
