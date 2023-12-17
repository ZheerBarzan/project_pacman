import "package:flutter/material.dart";

class MyPixel extends StatelessWidget {
  final Color innerColor;
  final Color outerColor;
  final int child;
  const MyPixel(
      {super.key,
      required this.child,
      required this.innerColor,
      required this.outerColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(4),
          color: outerColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.all(4),
              color: innerColor,
              child: Center(child: Text("$child")),
            ),
          ),
        ),
      ),
    );
  }
}
