import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  final String text;
  const TopText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const TopText(text: 'Works'),
        ),
        TextButton(
          onPressed: () {},
          child: const TopText(text: 'About'),
        ),
        TextButton(
          onPressed: () {},
          child: const TopText(text: 'Contact'),
        ),
      ],
    );
  }
}
