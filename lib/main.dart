import 'dart:ui';

import 'package:flutter/material.dart';

import './projects.dart';
import './contact.dart';
import './about.dart';
import './introduction.dart';
import './components/frost_container.dart';
import './top.dart';
import './components/color_text.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BIG MOVES',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ScrollController();
  double screenHeight = 1000.0;
  double blur = 1;

  double opacity = 0.9;

  int fadeInStart = 900;
  int fadeOutStart = 4800;

  @override
  void initState() {
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(onScroll);
  }

  onScroll() {
    setState(() {
      print(controller.offset);
      blur = controller.offset / (screenHeight - 200) * 10;
      if (blur > 10) blur = 10;
      if (blur < 1) blur = 1;

      // 1180 - старт фейда
      if (controller.offset > fadeInStart && controller.offset < fadeOutStart) {
        opacity = 2 - controller.offset / fadeInStart;
      }
      if (controller.offset > fadeOutStart) {
        // 5300
        opacity = 1 - (1 - (controller.offset / 5580)) / 0.14 * 1;
        print(opacity);
      }
      if (opacity > 0.9) opacity = 0.9;
      if (opacity < 0) opacity = 0;
      if (opacity < 0.1) opacity = 0.1;
      // print(opacity);

      // 4700 - фейдаут
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            opacity: opacity,
            image: const AssetImage('images/bkbw.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: ListView(
            controller: controller,
            children: [
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                // decoration: BoxDecoration(
                // borderRadius: borderRadius,
                // color: Colors.black26,
                // ),
                // Top buttons
                child: const TopRow(),
              ),
              // SizedBox(height: screenHeight),
              const SizedBox(height: 20),
              // Introduction
              const Introduction(),
              const SizedBox(height: 500),

              // About me
              const EarlyAbout(),

              const SizedBox(height: 500),

              // Projects
              const Projects(),

              const SizedBox(height: 500),
              // Container(
              //   width: double.infinity,
              //   // height: 50,
              //   // decoration: BoxDecoration(
              //   //   borderRadius: borderRadius,
              //   //   color: Colors.white60,
              //   // ),
              //   // margin: const EdgeInsets.all(10),
              //   // padding: const EdgeInsets.all(10),
              //   child: const Projects(),
              // ),

              // TODO: turn off fade
              const LateAbout(),

              // Contancts
              const SizedBox(height: 150),
              Container(
                margin: const EdgeInsets.all(40),
                child: Row(
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: RainbowText(
                        text: "Powered by best doggy ever!\nWith love",
                        fontSize: 70,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'images/test.jpg',
                          width: 600,
                          height: 500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Contanct(),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
