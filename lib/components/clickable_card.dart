import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ClickableCard extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final double textLeftPadding;

  final Color cardColor;
  final double height;
  final double padding;
  final EdgeInsets margin;

  final VoidCallback pressHandler;

  const ClickableCard({
    Key? key,
    required this.text,
    this.textSize = mediumTextSize,
    required this.textColor,
    this.textLeftPadding = 0,
    required this.cardColor,
    this.height = 60,
    this.padding = 10,
    this.margin = const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
    required this.pressHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: cardColor,
          elevation: 0,
          padding: EdgeInsets.all(padding),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        onPressed: pressHandler,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(padding),
              child: Text(text,
                  style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontWeight: FontWeight.normal)),
            ),
          ],
        ),
      ),
    );
  }
}
