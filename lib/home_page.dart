import 'package:flutter/material.dart';
import 'package:flutter_game/button.dart';
import 'package:flutter_game/logic.dart';
import 'package:flutter_game/mario.dart';
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
            child: Container(
              color: Colors.blue[300],
              child: AnimatedContainer(
                alignment: Alignment(indexX, indexY),
                duration: const Duration(seconds: 0),
                child: const Mario(),
              ),
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
