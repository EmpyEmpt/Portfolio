import 'package:flutter/material.dart';

import './components/texts.dart';

class EarlyAbout extends StatelessWidget {
  static const double spacing = 10.0;
  const EarlyAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          AboutText(
            text: "Let's get to know each other!",
            fontSize: 70,
            fontWeight: FontWeight.w900,
            fontFamily: 'Nunito ExtraBold',
          ),
          SizedBox(height: 40),
          AboutText(text: "I'm Empy, but passport says that my name's Ilya..."),
          SizedBox(height: spacing),
          AboutText(
              text:
                  "I'm a junior (for now) Data Scientist and I'm very passinoate about what I'm doing"),
          SizedBox(height: spacing),
          AboutText(
              text:
                  "Over my journey I've created a few things, earned a few praises and learned a whole lot"),
          SizedBox(height: spacing),
          AboutText(text: "(with much more to come)"),
          SizedBox(height: spacing),
          AboutText(
              text:
                  "And I enjoy doing much more than just progress in this field!"),
          SizedBox(height: spacing),
          AboutText(text: "Let me show you!"),
          SizedBox(height: 5),
          AboutText(
              text: "Psst... QR-codes are clickable...",
              fontSize: 15,
              color: Colors.white),
        ],
      ),
    );
  }
}

class LateAbout extends StatelessWidget {
  static const double spacing = 10.0;
  static Color color = Colors.white.withAlpha(200);
  static const double fontSize = 30;
  const LateAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const AboutText(
              text: "Wow, more information!",
              fontSize: 70,
              fontWeight: FontWeight.w900),
          const SizedBox(height: spacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const AboutText(
                  text: "Currently I'm second-year undergraduate in "),
              GradientText(
                text: const AboutText(
                    text: "'Simulation modeling and data analysis'"),
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade200,
                    Colors.blue.shade500,
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: spacing),
          const AboutText(text: "And I'm planning on getting a Masters!"),
          const SizedBox(height: spacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GradientText(
                text: const AboutText(text: "Mean grade - 4.6,"),
                gradient: LinearGradient(
                  colors: [
                    Colors.green.shade700,
                    Colors.purple.shade500,
                  ],
                ),
              ),
              const AboutText(
                  text:
                      " it's not that hard to be honest, hense why I have lots of time"),
            ],
          ),
          const SizedBox(height: spacing),
          const AboutText(
              text:
                  "It's fun doing things myself, but getting paid for it and learning a lot more..."),
          const SizedBox(height: spacing),
          GradientText(
            text: const AboutText(text: "Sounds like a dream, but I'm trying!"),
            gradient: LinearGradient(
              colors: [
                Colors.red.shade500,
                Colors.orange.shade500,
                Colors.yellow.shade500,
                Colors.green.shade500,
                Colors.blue.shade500,
                Colors.purple.shade500,
              ],
            ),
          ),
          const SizedBox(height: 100),
          const Align(
            alignment: Alignment.centerLeft,
            child: AboutText(
                text: "Oh, yeah, my skills:",
                fontSize: 70,
                fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: spacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Category
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AboutText(text: "Languages: "),
                  AboutText(text: "DS libraries: "),
                  AboutText(text: "Other python libraries:    "),
                  AboutText(text: "Technologies: "),
                ],
              ),
              // Names
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6),
                  GradientText(
                    text: const AboutText(
                        text: "Python, C++, Flutter/Dart", fontSize: 21),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red.shade200,
                        Colors.blue.shade500,
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  // const Spacer(),
                  GradientText(
                    text: const AboutText(
                        text:
                            "Tensofrlow, FastAI, Scikit, Pandas, Seaborn & matplotlib, open-cv",
                        fontSize: 21),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade500,
                        Colors.yellow.shade500,
                        Colors.orange.shade800,
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  GradientText(
                    text: const AboutText(
                        text: "Numpy, DLib, Flask", fontSize: 21),
                    gradient: LinearGradient(
                      colors: [
                        Colors.yellow.shade200,
                        Colors.green.shade500,
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  GradientText(
                    text: const AboutText(
                        text: "Git, DVC, SQL, Docker, Google", fontSize: 21),
                    gradient: LinearGradient(
                      colors: [
                        Colors.green.shade200,
                        Colors.red.shade500,
                        Colors.blue.shade500,
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 100),
          const AboutText(
              text: "Some other praises and expiriences I've gotten:",
              fontSize: 50,
              fontWeight: FontWeight.w900),
          const SizedBox(height: spacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    text: const AboutText(text: "ZeBrains internship: "),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade200,
                        Colors.amber.shade800,
                      ],
                    ),
                  ),
                  const AboutText(text: "Go2Data hackathon: "),
                  const AboutText(text: "Very good friend award:       "),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AboutText(
                      text: "Summer-Fall 2021, Data Scientist", fontSize: 21),
                  const SizedBox(height: 13),
                  GradientText(
                    text: const AboutText(
                        text: "Duoed the victory", fontSize: 21),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red.shade800,
                        Colors.green.shade300,
                      ],
                    ),
                  ),
                  const SizedBox(height: 13),
                  const AboutText(text: "By all of my friends!", fontSize: 21),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
