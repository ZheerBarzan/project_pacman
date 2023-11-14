import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static int numberInRow = 11;
  int numberOfSqures = numberInRow * 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Column(
        children: [
          // the map area
          Expanded(
            flex: 5,
            child: Container(
              child: GridView.builder(
                  itemCount: numberOfSqures,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: numberInRow),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        color: Colors.grey,
                      ),
                    );
                  }),
            ),
          ),
          // the socre area
          Expanded(
            child: Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("Score:"), Text("PLAY")],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
