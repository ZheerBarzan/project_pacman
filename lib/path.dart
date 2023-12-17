import "package:flutter/material.dart";

class MyPath extends StatelessWidget {
  final Color innerColor;
  final Color outerColor;
  final int? child;
  const MyPath(
      {super.key,
      this.child,
      required this.innerColor,
      required this.outerColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          padding: const EdgeInsets.all(10),
          color: outerColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: innerColor,
              //child: Center(child: Text("$child")),
            ),
          ),
        ),
      ),
    );
  }
}
