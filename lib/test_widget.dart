import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 204, 200, 200),
      child: const Row(
        children: <Widget>[
          Text('Begin'),
          Spacer(), // Defaults to a flex of one.
          Text('Middle'),
          // Gives twice the space between Middle and End than Begin and Middle.
          Spacer(flex: 1),
          Text('End'),
        ],
      ),
    );
  }
}
