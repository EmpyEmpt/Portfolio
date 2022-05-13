import 'package:flutter/material.dart';

import './utils/constants.dart';

List projText = [
  "Yeah I need to write something about my great project here",
  "but honestly - I have no idea what to write now and I really really need to write something",
  "I just have to know what it might look like",
  "So for now here lies this text",
  "I will edit it at some point, add images and stuff to the side of it and even use some fancy font,",
  "but bruv, I have no energy for it now",
  "now I simply need a shit load of text to figure out how everything looks",
  "this text hopefully will help me",
  "in this crazy design journey",
  "balls and cock - I like em both",
  "on god I need a few more lines so they would't be all the same",
  "wow",
  "such text",
  "much style",
];

class ProjText extends StatelessWidget {
  final String text;
  const ProjText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        height: 1.5,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ALL ROUND COLUMN
    return Column(
      children: [
        // Project 1

        Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.fromLTRB(300, 40, 50, 40),

          width: double.infinity,
          // height: bigtempheight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.red[800]!.withOpacity(0.5),
          ),
          // Project 1 column
          child: Column(
            children: [
              Align(
                alignment: const Alignment(0.5, 0),
                child: Text('Facial ladmark detection (470 dots)',
                    style: TextStyle(
                      color: Colors.blue.shade200,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    )),
              ),
              const SizedBox(height: 20),
              // Row 1 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  Image.asset(
                    'images/test.jpg',
                    width: 100,
                    height: 100,
                  ),

                  // const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: projText[4]),
                        ProjText(text: projText[5]),
                        ProjText(text: projText[6]),
                        ProjText(text: projText[7] + projText[8]),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 2 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProjText(text: 'UwU'),
                      ProjText(text: projText[11]),
                      ProjText(text: projText[12]),
                      ProjText(text: projText[13]),
                    ],
                  ),
                  // const Spacer(),
                  // Images 3-6
                  Expanded(flex: 10, child: Container()),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 3 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  Image.asset(
                    'images/test.jpg',
                    width: 100,
                    height: 100,
                  ),

                  // const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: projText[4]),
                        ProjText(text: projText[5]),
                        ProjText(text: projText[6]),
                        ProjText(text: projText[7] + projText[8]),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        // Project 2

        Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.fromLTRB(0, 40, 200, 40),
          width: double.infinity,
          // height: bigtempheight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.indigo.withOpacity(0.5),
          ),

          // Project 2 column

          child: Column(
            children: [
              Align(
                alignment: const Alignment(-0.5, 0),
                child: Text('Facial ladmark detection (68 dots)',
                    style: TextStyle(
                      color: Colors.blue.shade200,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    )),
              ),
              const SizedBox(height: 20),

              // Row 1 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjText(text: projText[0]),
                      ProjText(text: projText[1]),
                      ProjText(text: projText[2]),
                      ProjText(text: projText[3]),
                    ],
                  ),
                  // const Spacer(),
                  // image 1
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 2 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  Image.asset(
                    'images/test.jpg',
                    width: 100,
                    height: 100,
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: projText[4]),
                        ProjText(text: projText[5]),
                        ProjText(text: projText[6]),
                        ProjText(text: projText[7] + projText[8]),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 3 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProjText(text: 'UwU'),
                      ProjText(text: projText[11]),
                      ProjText(text: projText[12]),
                      ProjText(text: projText[13]),
                    ],
                  ),
                  // const Spacer(),
                  // Images 3-6
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),

        // Project 3

        Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.fromLTRB(300, 40, 0, 40),
          width: double.infinity,
          // height: bigtempheight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.green[800]!.withOpacity(0.5),
          ),

          // Project 3 column

          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text('Facial ladmark detection (470 dots)',
                    style: TextStyle(
                      color: Colors.blue.shade200,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    )),
              ),
              const SizedBox(height: 20),
              // Row 1 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  Image.asset(
                    'images/test.jpg',
                    width: 100,
                    height: 100,
                  ),

                  // const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: projText[4]),
                        ProjText(text: projText[5]),
                        ProjText(text: projText[6]),
                        ProjText(text: projText[7] + projText[8]),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 2 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProjText(text: 'UwU'),
                      ProjText(text: projText[11]),
                      ProjText(text: projText[12]),
                      ProjText(text: projText[13]),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Images 3-6
                  Expanded(flex: 10, child: Container()),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/test.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
              // Row 3 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  Image.asset(
                    'images/test.jpg',
                    width: 100,
                    height: 100,
                  ),

                  // const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: projText[4]),
                        ProjText(text: projText[5]),
                        ProjText(text: projText[6]),
                        ProjText(text: projText[7] + projText[8]),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // const SizedBox(height: 30),

        // Project 4
      ],
    );
  }
}
