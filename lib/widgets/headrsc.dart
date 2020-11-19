import 'package:flutter/material.dart';
import 'package:webtest/styletext/colors.dart';
import 'package:webtest/styletext/styletext.dart';

double highte;
double withe;

class HeadrsC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    highte = MediaQuery.of(context).size.height;
    withe = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopHeadarC();
      } else {
        if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeadarC();
        } else {
          // return MobielHeader();
        }
      }
    });
  }
}

class DesktopHeadarC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Personal Online & Personal Software',
              style: Stylettext.h24color,
            ),
            SizedBox(
              height: highte / 12,
            ),
            Text(
              'Create audio files more easily\nfor commercial use.',
              style: Stylettext.h46,
            ),
            SizedBox(
              height: highte / 15,
            ),
            Text(
              'Create narration for YouTube videos.\nGenerate audio for eLearning material.\nPublic use, broadcasting, or IVR systems.\nLatest and most intelligent AI voices.',
              style: Stylettext.h24,
            ),
            SizedBox(
              height: highte / 15,
            ),
            Row(
              children: [
                Container(
                  height: highte / 15,
                  width: withe / 6,
                  decoration: BoxDecoration(
                      color: Pinter.btn,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Go To Online Reader Comarcial',
                      style: Stylettext.h16btn,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: highte / 15,
                  width: withe / 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black.withOpacity(.8))),
                  child: Center(
                    child: Text(
                      'Watch Video',
                      style: Stylettext.h16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          height: highte / 1.4,
          width: withe / 3,
          decoration: BoxDecoration(
              // color: Colors.grey[200].withOpacity(.3),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.naturalreaders.com/comfiles/indexfiles/img/logo-speeach.png'),
                  fit: BoxFit.contain)),
        )
      ],
    );
  }
}
