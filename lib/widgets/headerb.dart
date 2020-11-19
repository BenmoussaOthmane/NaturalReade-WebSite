import 'package:flutter/material.dart';
import 'package:webtest/styletext/colors.dart';
import 'package:webtest/styletext/styletext.dart';

double highte;
double withe;

class HeaderB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    highte = MediaQuery.of(context).size.height;
    withe = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopHeaderB();
      } else {
        if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderB();
        } else {
          // return MobileNavbar();
        }
      }
    });
  }
}

class DesktopHeaderB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: highte / 2,
          width: withe / 3,
          decoration: BoxDecoration(
              // color: Colors.grey[200].withOpacity(.3),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.naturalreaders.com/comfiles/indexfiles/img/logo-speeach.png'),
                  fit: BoxFit.contain)),
        ),
        SizedBox(
          width: withe / 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Online & Personal Software',
              style: Stylettext.h24color,
            ),
            SizedBox(
              height: highte / 12,
            ),
            Text(
              'Listen on your own time at your\nown pace.',
              style: Stylettext.h46,
            ),
            SizedBox(
              height: highte / 20,
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
            SizedBox(
              height: highte / 20,
            ),
            Text(
              'For personal use and recommended for:',
              style: Stylettext.h20,
            ),
            SizedBox(
              height: highte / 20,
            ),
            Row(
              children: [
                Container(
                  height: highte / 6,
                  width: withe / 7,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent.withOpacity(.1),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Students',
                          style: Stylettext.h16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: withe / 40,
                ),
                Container(
                  height: highte / 6,
                  width: withe / 7,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent.withOpacity(.1),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Students',
                          style: Stylettext.h16,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: highte / 20,
            ),
            Row(
              children: [
                Container(
                  height: highte / 6,
                  width: withe / 7,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent.withOpacity(.1),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Students',
                          style: Stylettext.h16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: withe / 40,
                ),
                Container(
                  height: highte / 6,
                  width: withe / 7,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent.withOpacity(.1),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Students',
                          style: Stylettext.h16,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
