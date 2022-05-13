import 'package:flutter/material.dart';
import 'package:rainbow_color/rainbow_color.dart';

class TopText extends StatelessWidget {
  final String text;
  const TopText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        letterSpacing: 5,
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        fontFamily: 'Nunito',
      ),
    );
  }
}

class ProjText extends StatelessWidget {
  final String text;
  const ProjText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Nunito',
        color: Colors.white,
        fontSize: 25,
        height: 2,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

const Color wht = Color.fromARGB(200, 255, 255, 255);

class AboutText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String fontFamily;
  const AboutText({
    Key? key,
    required this.text,
    this.fontSize = 30,
    this.fontWeight = FontWeight.w400,
    this.color = wht,
    this.fontFamily = 'Nunito',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText({Key? key, required this.gradient, required this.text})
      : super(key: key);

  final Widget text;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: text,
    );
  }
}

class RainbowText extends StatefulWidget {
  final String text;
  final double fontSize;
  const RainbowText({Key? key, required this.text, required this.fontSize})
      : super(key: key);

  @override
  RainbowTextState createState() => RainbowTextState();
}

class RainbowTextState extends State<RainbowText>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color> _colorAnim;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _colorAnim =
        RainbowColorTween([Colors.blue, Colors.green, Colors.red, Colors.blue])
            .animate(controller)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              controller.reset();
              controller.forward();
            } else if (status == AnimationStatus.dismissed) {
              controller.forward();
            }
          });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: _colorAnim.value,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w900,
        fontSize: widget.fontSize,
      ),
    );
  }
}
