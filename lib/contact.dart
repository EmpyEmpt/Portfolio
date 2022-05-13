import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                fontSize: 40,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              TextButton(
                child: Text(
                  'GitHub',
                  style: TextStyle(
                    fontSize: fontsize,
                    color: Colors.black,
                  ),
                ),
                onPressed: () async {
                  final Uri github = Uri.parse('https://github.com/empyempt');
                  if (await canLaunchUrl(github)) {
                    await launchUrl(github);
                  } else {
                    throw 'Could not launch $github';
                  }
                },
              ),
              TextButton(
                child: Text(
                  'Telegram',
                  style: TextStyle(
                    fontSize: fontsize,
                    color: Colors.blue.shade300,
                  ),
                ),
                onPressed: () async {
                  final Uri tg = Uri.parse('https://t.me/empyempt');
                  if (await canLaunchUrl(tg)) {
                    await launchUrl(tg);
                  } else {
                    throw 'Could not launch $tg';
                  }
                },
              ),
              TextButton(
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: fontsize,
                    color: Colors.red.shade400,
                  ),
                ),
                onPressed: () async {
                  final Uri email = Uri.parse(
                      'mailto:3mptinessy@gmail.com?subject=Hey&body=message');
                  if (await canLaunchUrl(email)) {
                    await launchUrl(email);
                  } else {
                    throw 'Could not launch $email';
                  }
                },
              ),
              TextButton(
                child: Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: fontsize,
                    color: Colors.pink.shade600,
                  ),
                ),
                onPressed: () async {
                  final Uri email =
                      Uri.parse('https://www.instagram.com/empyempt/');
                  if (await canLaunchUrl(email)) {
                    await launchUrl(email);
                  } else {
                    throw 'Could not launch $email';
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
