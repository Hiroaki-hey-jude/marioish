import 'package:flutter/material.dart';
import 'package:flutter_game/button.dart';
import 'package:flutter_game/cloud.dart';
import 'package:flutter_game/jumping_mario.dart';
import 'package:flutter_game/logic.dart';
import 'package:flutter_game/mario.dart';
import 'package:flutter_game/pipe.dart';
import 'package:flutter_game/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final Logic _logic = Logic();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _logic.setRef(ref);
  }

  @override
  Widget build(BuildContext context) {
    double indexX = ref.watch(indexA);
    double indexY = ref.watch(indexB);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  color: Colors.blue[300],
                  child: AnimatedContainer(
                    alignment: Alignment(indexX, indexY),
                    duration: const Duration(seconds: 0),
                    child: _logic.jump
                        ? JumpingMario(direction: _logic.direction)
                        : Mario(
                            direction: _logic.direction,
                            run: _logic.run,
                          ),
                  ),
                ),
                Pipe(
                  x: 0.5,
                  y: 1,
                  height: 40,
                ),
                Pipe(
                  x: -0.2,
                  y: 1,
                  height: 60,
                ),
                Cloud(x: -0.5),
                Cloud(x: 0.1),
                Cloud(x: 0.7),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.brown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    icon: Icons.arrow_back,
                    function: _logic.moveLeft,
                  ),
                  Button(
                    icon: Icons.arrow_upward,
                    function: _logic.moveUp,
                  ),
                  Button(
                    icon: Icons.arrow_forward,
                    function: _logic.moveRight,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
