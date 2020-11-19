import 'dart:html';

import 'package:flutter/material.dart';
import 'package:webtest/styletext/colors.dart';
import 'package:webtest/styletext/styletext.dart';
import 'package:webtest/widgets/headera.dart';
import 'package:webtest/widgets/headerb.dart';
import 'package:webtest/widgets/headrsc.dart';

double highte;
double withe;

class Headar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    highte = MediaQuery.of(context).size.height;
    withe = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopHeadar();
      } else {
        if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeadar();
        } else {
          // return MobielHeader();
        }
      }
    });
  }
}

class DesktopHeadar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: withe / 1,
      // color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 300.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Powerful Text-to-Speech\nfor at home, work, or on\nthe go.',
                      style: Stylettext.h46,
                    ),
                    SizedBox(
                      height: highte / 15,
                    ),
                    Text(
                      'Upload text and documents or convert to mp3 to listen to\nanywhere anytime.',
                      style: Stylettext.h24,
                    ),
                    SizedBox(
                      height: highte / 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: highte / 15,
                          width: withe / 9,
                          decoration: BoxDecoration(
                              color: Pinter.btn,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Go To Online Reader',
                              style: Stylettext.h16btn,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: highte / 15,
                          width: withe / 12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.black.withOpacity(.8))),
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
            ),
          ),
          SizedBox(
            height: highte / 3.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300.0),
            child: HeaderA(),
          ),
          SizedBox(
            height: highte / 5,
          ),
          HeaderB(),
          SizedBox(
            height: highte / 3.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: HeadrsC(),
          ),
          SizedBox(
            height: highte / 3.5,
          ),
        ],
      ),
    );
  }
}
