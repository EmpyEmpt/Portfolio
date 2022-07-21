import 'dart:ui';

import 'package:flutter/material.dart';

import './utils/constants.dart';
import './projects.dart';
import './contact.dart';
import './about.dart';
import './introduction.dart';
// import './components/frost_container.dart';
import './components/texts.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'EmpyEmpt',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   splashColor: Colors.transparent,
      //   highlightColor: Colors.transparent,
      //   hoverColor: Colors.transparent,
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
  double screenWidth = 1920.0;
  double blur = 1;

  double opacity = 0.9;

  bool _visible = false;

  int fadeInStart = 1000;
  int fadeOutStart = 7800;

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

  void scrollTo(val) {
    // 2250 - works
    // 7350 - about
    // 8540 - end
    controller.animateTo(val,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    // return true;
  }

  onScroll() {
    if (controller.offset > 400 && !_visible) {
      setState(() {
        _visible = true;
      });
    }

    if (controller.offset < 400 && _visible) {
      setState(() {
        _visible = false;
      });
    }

    if (controller.offset < 700) {
      double tmpBlur;

      tmpBlur = controller.offset / (screenHeight - 200) * 10;
      if (tmpBlur > 10) tmpBlur = 10;
      if (tmpBlur < 1) tmpBlur = 1;

      if (tmpBlur + 0.05 > blur || tmpBlur - 0.05 < blur) {
        setState(() {
          blur = tmpBlur;
        });
      }

      // return;
    }

    // print(opacity);

    if (controller.offset > fadeInStart) {
      double tmpOpacity = 0;
      if (controller.offset < fadeOutStart) {
        tmpOpacity = 2 - controller.offset / fadeInStart;
      } else {
        tmpOpacity = 1 - (1 - (controller.offset / 8900)) / 0.1 + 0.38;
      }
      if (tmpOpacity > 0.9) tmpOpacity = 0.9;
      if (tmpOpacity < 0.1) tmpOpacity = 0.1;

      if (tmpOpacity - 0.05 > opacity || tmpOpacity + 0.05 < opacity) {
        setState(() {
          opacity = tmpOpacity;
        });
      }
    }
    // print(opacity);

    // setState(() {});

    // setState(() {
    // print(controller.offset);
    // if (controller.offset > 400 && !_visible) {
    //   _visible = true;
    // }
    // if (controller.offset < 400 && _visible) {
    //   _visible = false;
    // }
    // if (controller.offset < 700) {
    //   blur = controller.offset / (screenHeight - 200) * 10;
    //   if (blur > 10) blur = 10;
    //   if (blur < 1) blur = 1;
    //   // return;
    // }
    // print(blur);
    // if (controller.offset > fadeInStart) {
    //   if (controller.offset < fadeOutStart) {
    //     opacity = 2 - controller.offset / fadeInStart;
    //   } else {
    //     opacity = 1 - (1 - (controller.offset / 8900)) / 0.1 + 0.38;
    //   }
    //   if (opacity > 0.9) opacity = 0.9;
    //   if (opacity < 0.1) opacity = 0.1;
    // }
    // });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.white38.withAlpha(150),
          ),
          child: ElevatedButton(
            onPressed: () {
              scrollTo(0);
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              elevation: MaterialStateProperty.all<double>(0),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: borderRadius,
                ),
              ),
            ),
            child: const Icon(Icons.arrow_circle_up),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            opacity: opacity,
            image: ResizeImage(
              const AssetImage('images/bkbw.jpg'),
              width: screenWidth.toInt(),
              height: screenHeight.toInt(),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: ListView(
            cacheExtent: double.infinity,
            controller: controller,
            children: [
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),

                // Top buttons

                child: Row(
                  children: [
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        scrollTo(2250);
                      },
                      child: const TopText(text: 'Works'),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        scrollTo(7350);
                      },
                      child: const TopText(text: 'About'),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        scrollTo(8540);
                      },
                      child: const TopText(text: 'Contact'),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Introduction
              const Introduction(),
              const SizedBox(height: 500),

              // About me
              const EarlyAbout(),
              const SizedBox(height: 500),

              // Projects
              const Projects(),
              const SizedBox(height: 300),

              const LateAbout(),
              const SizedBox(height: 150),

              // Contancts
              Container(
                margin: const EdgeInsets.all(40),
                child: Row(
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: RainbowText(
                        text: "Powered by best doggy ever!\n    With love ❤️",
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

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
