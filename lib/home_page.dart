import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static int numberInRow = 11;
  int numberOfSqures = numberInRow * 17;
  List<int> barriers = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    22,
    33,
    44,
    55,
    66,
    77,
    88,
    99,
    110,
    121,
    132,
    143,
    154,
    165,
    176,
    177,
    178,
    179,
    180,
    181,
    182,
    183,
    184,
    185,
    186,
    175,
    164,
    153,
    142,
    131,
    120,
    109,
    98,
    87,
    76,
    65,
    54,
    43,
    32,
    21
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                        child: Center(child: Text(index.toString())),
                      ),
                    );
                  }),
            ),
          ),
          // the socre area
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "SCORE:",
                    style: GoogleFonts.pressStart2p(
                        color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "PLAY",
                    style: GoogleFonts.pressStart2p(
                        color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
