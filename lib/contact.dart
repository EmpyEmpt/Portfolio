import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final String url;
  final Color color;
  const ClickableText(
      {Key? key, required this.text, required this.url, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
      onPressed: () async {
        final Uri _url = Uri.parse(url);
        if (await canLaunchUrl(_url)) {
          await launchUrl(_url);
        } else {
          throw 'Could not launch $_url';
        }
      },
    );
  }
}

class Contanct extends StatelessWidget {
  final double fontsize = 20;
  const Contanct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "I'm open for contact",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.w900,
                fontFamily: 'Nunito ExtraBold',
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const ClickableText(
                text: 'GitHub',
                url: 'https://github.com/empyempt',
                color: Colors.black,
              ),
              ClickableText(
                text: 'Telegram',
                url: 'https://t.me/empyempt',
                color: Colors.blue.shade300,
              ),
              ClickableText(
                text: 'Email',
                url: 'mailto:3mptinessy@gmail.com?subject=Worky&body=Hello!',
                color: Colors.red.shade400,
              ),
              ClickableText(
                text: 'Instagram',
                url: 'https://www.instagram.com/empyempt/',
                color: Colors.pink.shade600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
