import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            child: Column(
              children: [
                // Text("Hi. I'm Empy.", style: TextStyle()),
                // Text('A Data Scientist')
                GradientText(
                  "Hi. I'm Empy",
                  style: const TextStyle(fontSize: 100),
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade200,
                      Colors.blue.shade500,
                    ],
                  ),
                ),
                GradientText(
                  "A Data Scientist",
                  style: const TextStyle(fontSize: 80),
                  gradient: LinearGradient(
                    colors: [
                      Colors.amber.shade300,
                      Colors.red.shade300,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Image.asset(
            'images/test.jpg',
            width: 400,
            height: 700,
          ),
        ),
      ],
    );
  }
}
