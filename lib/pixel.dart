import "package:flutter/material.dart";

class MyPixel extends StatelessWidget {
  final Color color;
  final int child;
  const MyPixel({super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        color: color,
        child: Center(child: Text("$child")),
      ),
    );
  }
}
