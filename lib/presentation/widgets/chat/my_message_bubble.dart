import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          decoration: BoxDecoration(color: Colors.amber),
          child: Text(
            'Hola',
            style: TextStyle(color: Colors.white),
          )),
    ]);
  }
}
