import 'package:flutter/material.dart';
import './components/texts.dart';

// class GradientText extends StatelessWidget {
//   const GradientText(
//     this.text, {
//     Key? key,
//     required this.gradient,
//     this.style,
//   });

//   final String text;
//   final TextStyle? style;
//   final Gradient gradient;

//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       blendMode: BlendMode.srcIn,
//       shaderCallback: (bounds) => gradient.createShader(
//         Rect.fromLTWH(0, 0, bounds.width, bounds.height),
//       ),
//       child: Text(text, style: style),
//     );
//   }
// }

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText(
                text: const Text(
                  "Hi. I'm Empy",
                  style: TextStyle(
                      fontSize: 100,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade200,
                    Colors.blue.shade500,
                  ],
                ),
              ),
              GradientText(
                text: const Text(
                  "A Data Scientist ",
                  style: TextStyle(
                      fontSize: 80,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900),
                ),
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
        Expanded(
          flex: 6,
          child: Image.asset(
            'images/kittyjpg.jpg',
            width: 700,
            height: 700,
          ),
        ),
      ],
    );
  }
}
