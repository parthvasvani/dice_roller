import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice_no = 1;
  void update() {
    setState(() {
      dice_no = Random().nextInt(6) + 1;
      print("Dice:$dice_no");
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Expanded(
    //     child: Padding(
    //       padding: EdgeInsets.all(50.0),
    //       child: GestureDetector(
    //         child: Image.asset('assets/images/dice$dice_no.png'),
    //         onTap: () {
    //           update();
    //         },
    //       ),
    //     ),
    //   ),
    // );
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: GestureDetector(
                child: Image.asset('assets/images/dice$dice_no.png'),
                onTap: () {
                  update();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
