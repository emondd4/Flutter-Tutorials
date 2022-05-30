import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_dice/Stores/dice_counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final DiceCounter diceCounter = DiceCounter();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mobx Dice",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Observer(
                      builder: (_) =>
                          Image.asset('assets/dice${diceCounter.left}.png'),
                    ),
                    onPressed: diceCounter.roll,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Observer(
                      builder: (_) =>
                          Image.asset('assets/dice${diceCounter.right}.png'),
                    ),
                    onPressed: diceCounter.roll,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (_) => Text(
                  'Total ${diceCounter.total}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 16,
                      fontFamily: 'Verdana'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
