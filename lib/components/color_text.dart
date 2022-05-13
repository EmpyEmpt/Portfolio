import 'package:flutter/material.dart';
import 'package:rainbow_color/rainbow_color.dart';

class GradientText extends StatelessWidget {
  const GradientText({Key? key, required this.gradient, required this.text})
      : super(key: key);

  final Text text;
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
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(color: _colorAnim.value, fontSize: widget.fontSize),
    );
  }
}
