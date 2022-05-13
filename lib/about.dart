import 'package:flutter/material.dart';

import './components/color_text.dart';

class EarlyAbout extends StatelessWidget {
  static const double spacing = 10.0;
  static Color color = Colors.white.withAlpha(200);
  static const double fontSize = 30;
  const EarlyAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Let's get to know each other!",
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "I'm Empy, but passport says that my name's Ilya...",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          Text(
            "I'm a junior (for now) Data Scientist and I'm very passinoate about what I'm doing",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          Text(
            "Over my journey I've created a few things, earned a few praises and learned a whole lot",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          Text(
            "(with much more to come)",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          Text(
            "And I enjoy doing much more than just progress in this field!",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          Text(
            "Let me show you!",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
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
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Wow, more information!",
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Currently I'm second-year undergraduate in ",
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
              GradientText(
                text: Text(
                  "'Simulation modeling and data analysis'",
                  style: TextStyle(
                    fontSize: fontSize - 1,
                    // fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade200,
                    Colors.blue.shade500,
                  ],
                ),
              ),
            ],
          ),
          // Text(
          //   "Currently I'm second-year undergraduate in 'Simulation modeling and data analysis'",
          //   style: TextStyle(
          //     fontSize: fontSize,
          //     fontWeight: FontWeight.w400,
          //     color: color,
          //   ),
          // ),
          const SizedBox(height: spacing),
          Text(
            "And I'm planning on getting a Masters!",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GradientText(
                text: Text(
                  "Mean grade - 4.6,",
                  style: TextStyle(
                    fontSize: fontSize - 1,
                    fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.green.shade700,
                    Colors.purple.shade500,
                  ],
                ),
              ),
              Text(
                " it's not that hard to be honest, hense why I have lots of time",
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ],
          ),
          // Text(
          //   "Mean grade - 4.6, it's not that hard to be honest, hense why I have lots of time",
          //   style: TextStyle(
          //     fontSize: fontSize,
          //     fontWeight: FontWeight.w400,
          //     color: color,
          //   ),
          // ),
          const SizedBox(height: spacing),
          Text(
            "It's fun doing things myself, but getting paid for it and learning a lot more...",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          GradientText(
            text: Text(
              "Sounds like a dream, but I'm trying!",
              style: TextStyle(
                fontSize: fontSize - 1,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
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
          // Text(
          //   "Sounds like a dream, but I'm trying!",
          //   style: TextStyle(
          //     fontSize: fontSize,
          //     fontWeight: FontWeight.w400,
          //     color: color,
          //   ),
          // ),
          const SizedBox(height: 100),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Oh, yeah, my skills:",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          const SizedBox(height: spacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Category
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Languages: ",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                  Text(
                    "DS libraries: ",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                  Text(
                    "Other python libraries:    ",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                  Text(
                    "Technologies: ",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                ],
              ),
              // Names
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    text: Text(
                      "Python, C++, Flutter/Dart",
                      style: TextStyle(
                        fontSize: fontSize - 10,
                        fontWeight: FontWeight.w400,
                        color: color,
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red.shade200,
                        Colors.blue.shade500,
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  GradientText(
                    text: Text(
                      "Tensofrlow, FastAI, Scikit, Pandas, Seaborn & matplotlib, open-cv",
                      style: TextStyle(
                        fontSize: fontSize - 10,
                        fontWeight: FontWeight.w400,
                        color: color,
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade500,
                        Colors.yellow.shade500,
                        Colors.orange.shade800,
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  GradientText(
                    text: Text(
                      "Numpy, DLib, Flask",
                      style: TextStyle(
                        fontSize: fontSize - 10,
                        fontWeight: FontWeight.w400,
                        color: color,
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.yellow.shade200,
                        Colors.green.shade500,
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  GradientText(
                    text: Text(
                      "Git, DVC, SQL, Docker, Google",
                      style: TextStyle(
                        fontSize: fontSize - 10,
                        fontWeight: FontWeight.w400,
                        color: color,
                      ),
                    ),
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
          // const SizedBox(height: spacing),

          Text(
            "Some other praises and expiriences I've gotten:",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: spacing),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GradientText(
                    text: Text(
                      "ZeBrains internship: ",
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w400,
                        color: color,
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade200,
                        Colors.amber.shade800,
                      ],
                    ),
                  ),

                  // Text(
                  //   "ZeBrains internship: ",
                  //   style: TextStyle(
                  //     fontSize: fontSize,
                  //     fontWeight: FontWeight.w400,
                  //     color: color,
                  //   ),
                  // ),
                  Text(
                    "Go2Data hackathon: ",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                  Text(
                    "Very good friend award:       ",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Summer-Fall 2021, Data Scientis",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 13),
                  GradientText(
                    text: Text(
                      "Duoed the victory",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: color,
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red.shade800,
                        Colors.green.shade300,
                      ],
                    ),
                  ),
                  const SizedBox(height: 13),
                  // Text(
                  //   "Duoed the victory",
                  //   style: TextStyle(
                  //     fontSize: fontSize,
                  //     fontWeight: FontWeight.w400,
                  //     color: color,
                  //   ),
                  // ),
                  Text(
                    "By all of my friends!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
