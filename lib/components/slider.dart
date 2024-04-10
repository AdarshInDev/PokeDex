import 'package:flutter/material.dart';

class SliderT extends StatelessWidget {
  const SliderT({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
      width: 300,
      child: Row(
        children: [TileT(color: Colors.red, title: "Fire")],
      ),
    );
  }
}

class TileT extends StatelessWidget {
  final String title;
  final Color color;
  const TileT({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      tileColor: color,
    );
  }
}
