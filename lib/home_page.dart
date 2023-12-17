import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pacman/path.dart';
import 'package:project_pacman/pixel.dart';

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
    87,
    76,
    65,
    54,
    43,
    32,
    21,
    24,
    35,
    46,
    57,
    78,
    79,
    80,
    81,
    70,
    59,
    100,
    101,
    102,
    103,
    114,
    125,
    123,
    134,
    145,
    156,
    158,
    147,
    148,
    149,
    160,
    127,
    116,
    105,
    106,
    107,
    108,
    129,
    140,
    151,
    162,
    173,
    26,
    37,
    38,
    39,
    28,
    61,
    72,
    83,
    84,
    85,
    86,
    30,
    41,
    52,
    63,
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
                    if (barriers.contains(index)) {
                      return MyPixel(
                        // child: index,
                        innerColor: Colors.blue.shade800,
                        outerColor: Colors.blue.shade900,
                      );
                    } else {
                      return MyPath(
                        innerColor: Colors.yellow,
                        outerColor: Colors.black,
                        // child: index,
                      );
                    }
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
