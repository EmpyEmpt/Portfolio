import 'package:flutter/material.dart';

import '../utils/constants.dart';

double smalltempheight = 20;
double bigtempheight = 60;

class FrostedContainer extends StatelessWidget {
  final Widget widget;
  const FrostedContainer({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: bigtempheight,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.transparent,
      ),
      child: widget,
    );
  }
}
