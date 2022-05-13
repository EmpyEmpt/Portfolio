import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './components/texts.dart';
import './utils/constants.dart';

List fld = [
  // Part 1 (0-4)
  "One of my first full fledged self-made models",
  "High accuracy, avoided overfitting, works on obstucted faces",
  "I spent some time making it smaller, ",
  "while not sacrificing on performance",
  "The whole model is just 3mb",
  // Part 2 (5-10)
  "I've found unannotated dataset (just photos, basically),",
  "annotated it (not by hand, of course)",
  "written all data preparation logic from scratch,",
  "found a way to store it (hey, DVC),",
  "defined a basic CNN, and trained it!",
  "Oh, and set up a web-server and Dockerized it",
  // Part 3 (11-15)
  "Am I explaining too much? I hope not",
  "What I used and what I learned:",
  "Python, TensorFlow, DLib, Pillow, open-cv, Flask, Docker, DVC",
  "CNNs are interesting! Data is more importand than model architecture",
  "Good prepocessing takes a lot of thought and attention"
];

List mesh = [
  // Part 1 (0-4)
  "I'd say this work is a natural extension of a previous one",
  "Now with more landmarks, and more accuracy,",
  "especially in difficult scenarios",
  "And it's now a MESH: whiter dots are further from you",
  "It's like a mask!",
  // Part 2 (5-9)
  "It's clearly not finished (flying points on the left)",
  "and I'm still working on it,",
  "yet so far I'm really pleased!",
  "I wonder if I would be able to try transfer-lerarning on it...",
  "Doing it on animals whould be interesting...",
  // Part 3 (10-15)
  "It's nice to refine your knowledge!",
  "What I used and what I learned: ",
  "Python, TensorFlow, TF-IO, open-cv, Flask, Docker, DVC",
  "There're a lot of ways to optimise work of models.",
  "TensorFlow is a huge library",
  "Original implementation of this idea is ingenious"
];

List segm = [
  // Part 1 (0-4)
  "I wanted to explore U-Nets, and the chance came to me",
  "Removing background from a static photo",
  "This time I wasn't going to annoted anything myself",
  "So i found an existing dataset",
  "And transformed it a little",
  // Part 2 (5-8)
  "I always try to optimise models as much as possible",
  "and 350mb is too much for me... ",
  "Ecpecially compared to my previous works",
  "I can do better! And I will!",
  // Part 3 (9-14)
  "Exploring new territories is awesome",
  "What I used and what I learned: ",
  "Python, TensorFlow, TF-IO, open-cv, Flask, Docker, DVC",
  "I wanted to try out pytorch, but didn't get around to do it...",
  "I might change it since I have time now...",
  "DeepLabV3 has no competition in this field"
];

List misc = [
  "I've obviously worked on a lot more stuff in the meantime",
  "Like lab works (not just mine) in Pyhton, C++ and some other programs,",
  "And I've done a few hundred of them! Oh, and Kaggle Titanic 1st place in Uni.",
  "University-driven projects, their presentation, team building, technology exploration,",
  "meme scrolling, fun having, hard working... Ekhem...",
  "I enjoy learning about a lot of different fields like psychology, some biology, even linguistics!",
  "So i can't show of all of me here, but the most relevant things",
];

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ALL ROUND COLUMN
    return Column(
      children: [
        // Project 1 - FLD

        Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.fromLTRB(0, 40, 200, 40),
          width: double.infinity,
          // height: bigtempheight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.indigo.withOpacity(0.5),
          ),

          // Project 1 column

          child: Column(
            children: [
              Align(
                alignment: const Alignment(-1, 0),
                child: Text(
                  'Face ladmark detection (68 dots)',
                  style: TextStyle(
                    fontFamily: 'Nunito ExtraBold',
                    color: Colors.blue.shade200,
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Row 1 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjText(text: fld[0]),
                      ProjText(text: fld[1]),
                      ProjText(text: fld[2]),
                      ProjText(text: fld[3]),
                      ProjText(text: fld[4]),
                    ],
                  ),
                  // const Spacer(),
                  // image 1
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/Examples/fld_1_out.jpeg',
                        width: 400,
                        height: 400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 2 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  Image.asset(
                    'images/Examples/fld_2_out.jpeg',
                    width: 400,
                    height: 400,
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: fld[5]),
                        ProjText(text: fld[6]),
                        ProjText(text: fld[7]),
                        ProjText(text: fld[8]),
                        ProjText(text: fld[9]),
                        ProjText(text: fld[10]),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 3 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjText(text: fld[11]),
                      ProjText(text: fld[12]),
                      ProjText(text: fld[13]),
                      ProjText(text: fld[14]),
                      ProjText(text: fld[15]),
                    ],
                  ),
                  // const Spacer(),
                  // Images 3-6
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final Uri github = Uri.parse(
                            'https://github.com/EmpyEmpt/face-landark-detection');
                        if (await canLaunchUrl(github)) {
                          await launchUrl(github);
                        } else {
                          throw 'Could not launch $github';
                        }
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'images/QR/fld.png',
                          width: 250,
                          height: 250,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        // Project 2
        Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.fromLTRB(200, 40, 50, 40),

          width: double.infinity,
          // height: bigtempheight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: const Color.fromRGBO(231, 211, 211, 155),
            // color: Colors.blueAccent.shade700.withOpacity(0.5),
          ),
          // Project 2 column
          child: Column(
            children: [
              Align(
                alignment: const Alignment(1, 0),
                child: Text('Face mesh (468 dots)',
                    style: TextStyle(
                      fontFamily: 'Nunito ExtraBold',
                      color: Colors.blue.shade200,
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    )),
              ),
              const SizedBox(height: 20),
              // Row 1 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  Image.asset(
                    'images/Examples/mesh_1_out.png',
                    width: 400,
                    height: 400,
                  ),

                  // const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: mesh[0]),
                        ProjText(text: mesh[1]),
                        ProjText(text: mesh[2]),
                        ProjText(text: mesh[3]),
                        ProjText(text: mesh[4]),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 2 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjText(text: mesh[5]),
                      ProjText(text: mesh[6]),
                      ProjText(text: mesh[7]),
                      ProjText(text: mesh[8]),
                      ProjText(text: mesh[9]),
                    ],
                  ),
                  // const Spacer(),
                  // Images 3-6
                  // Expanded(flex: 10, child: Container()),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/Examples/mesh_2_out.png',
                        width: 400,
                        height: 400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 3 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  GestureDetector(
                    onTap: () async {
                      final Uri github =
                          Uri.parse('https://github.com/EmpyEmpt/face-mesh');
                      if (await canLaunchUrl(github)) {
                        await launchUrl(github);
                      } else {
                        throw 'Could not launch $github';
                      }
                    },
                    child: Image.asset(
                      'images/QR/mesh.png',
                      width: 250,
                      height: 250,
                    ),
                  ),

                  // const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: mesh[10]),
                        ProjText(text: mesh[11]),
                        ProjText(text: mesh[12]),
                        ProjText(text: mesh[13]),
                        ProjText(text: mesh[14]),
                        ProjText(text: mesh[15]),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        // Project 3

        Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.fromLTRB(0, 40, 100, 40),
          width: double.infinity,
          // height: bigtempheight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            // color: Colors.deepPurple.shade400.withOpacity(0.5),
            color: Colors.black.withOpacity(0.5),
          ),

          // Project 3 column

          child: Column(
            children: [
              Align(
                alignment: const Alignment(1, 0),
                child: Text('Background removal',
                    style: TextStyle(
                      fontFamily: 'Nunito ExtraBold',
                      color: Colors.blue.shade200,
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    )),
              ),
              const SizedBox(height: 20),
              // Row 1 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  Image.asset(
                    'images/Examples/segm_1_out.png',
                    width: 400,
                    height: 400,
                  ),

                  // const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: segm[0]),
                        ProjText(text: segm[1]),
                        ProjText(text: segm[2]),
                        ProjText(text: segm[3]),
                        ProjText(text: segm[4]),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row 2 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjText(text: segm[5]),
                      ProjText(text: segm[6]),
                      ProjText(text: segm[7]),
                      ProjText(text: segm[8]),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Images 3-6
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/Examples/segm_2_in.jpeg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/Examples/segm_2_mask.jpeg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/Examples/segm_2_out.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                ],
              ),
              // Row 3 - Image -> Tetx
              Row(
                children: [
                  // image 2
                  GestureDetector(
                    onTap: () async {
                      final Uri github = Uri.parse(
                          'https://github.com/EmpyEmpt/image-segmentation');
                      if (await canLaunchUrl(github)) {
                        await launchUrl(github);
                      } else {
                        throw 'Could not launch $github';
                      }
                    },
                    child: Image.asset(
                      'images/QR/segm.png',
                      width: 250,
                      height: 250,
                    ),
                  ),

                  // const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProjText(text: segm[9]),
                        ProjText(text: segm[10]),
                        ProjText(text: segm[11]),
                        ProjText(text: segm[12]),
                        ProjText(text: segm[13]),
                        ProjText(text: segm[14]),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
        // const SizedBox(height: 30),

        // Project 4
        const SizedBox(height: 30),
        // MISC

        Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.fromLTRB(20, 40, 20, 40),
          width: double.infinity,
          // height: bigtempheight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.white.withOpacity(0.5),
          ),

          // Misc column

          child: Column(
            children: [
              Align(
                alignment: const Alignment(0, 0),
                child: Text('Other smaller things',
                    style: TextStyle(
                      fontFamily: 'Nunito ExtraBold',
                      color: Colors.blue.shade200,
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    )),
              ),
              const SizedBox(height: 20),

              // Row 1 - Text -> Image
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjText(text: misc[0]),
                      ProjText(text: misc[1]),
                      ProjText(text: misc[2]),
                      ProjText(text: misc[3]),
                      ProjText(text: misc[4]),
                      ProjText(text: misc[5]),
                      ProjText(text: misc[6]),
                    ],
                  ),
                  // const Spacer(),
                  // image 1
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/doggy.png',
                        width: 400,
                        height: 400,
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ProjText(
                          text:
                              'There might be some other project on my GitHub'),
                      ProjText(text: 'But the most interesting ones are here'),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () async {
                          final Uri github =
                              Uri.parse('https://github.com/EmpyEmpt/');
                          if (await canLaunchUrl(github)) {
                            await launchUrl(github);
                          } else {
                            throw 'Could not launch $github';
                          }
                        },
                        child: Image.asset(
                          'images/QR/git.png',
                          width: 250,
                          height: 250,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
