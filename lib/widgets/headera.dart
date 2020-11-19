import 'package:flutter/material.dart';
import 'package:webtest/styletext/styletext.dart';

double highte;
double withe;

class HeaderA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    highte = MediaQuery.of(context).size.height;
    withe = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopHeaderA();
      } else {
        if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderA();
        } else {
          // return MobileNavbar();
        }
      }
    });
  }
}

class DesktopHeaderA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150.0),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent.withOpacity(.1),
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                    size: 80,
                  ),
                ),
              ),
              SizedBox(
                height: highte / 30,
              ),
              Text(
                'Natural Sounding Voices',
                style: Stylettext.h20,
              ),
              SizedBox(
                height: highte / 50,
              ),
              Text(
                'High quality, crystal-clear reading',
                style: Stylettext.h16,
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent.withOpacity(.1),
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                    size: 80,
                  ),
                ),
              ),
              SizedBox(
                height: highte / 30,
              ),
              Text(
                'Natural Sounding Voices',
                style: Stylettext.h20,
              ),
              SizedBox(
                height: highte / 50,
              ),
              Text(
                'High quality, crystal-clear reading',
                style: Stylettext.h16,
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent.withOpacity(.1),
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                    size: 80,
                  ),
                ),
              ),
              SizedBox(
                height: highte / 30,
              ),
              Text(
                'Natural Sounding Voices',
                style: Stylettext.h20,
              ),
              SizedBox(
                height: highte / 50,
              ),
              Text(
                'High quality, crystal-clear reading',
                style: Stylettext.h16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
