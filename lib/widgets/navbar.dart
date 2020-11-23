import 'package:flutter/material.dart';
import 'package:webtest/app_localizations.dart';
import 'package:webtest/styletext/colors.dart';
import 'package:webtest/styletext/styletext.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

double highte;
double withe;
Future<String> loadJsonFromAsset(language) async {
  return await rootBundle.loadString('assets/i18n/' + language + '.json');
}

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    highte = MediaQuery.of(context).size.height;
    withe = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else {
        if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          // return MobileNavbar();
        }
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: highte / 10,
      width: withe / 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 300.0, right: 50.0),
        child: Row(
          children: [
            Container(
              height: highte / 1,
              width: withe / 8,
              color: Colors.red,
            ),
            SizedBox(
              width: withe / 15,
            ),
            Container(
              height: highte / 1,
              width: withe / 2.4,
              //color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    onPressed: () {
                      print('Online');
                      print(AppLocalizations.of(context).translate('hello'));
                    },
                    child: Text(
                      'Online',
                      style: Stylettext.h16,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      print('Software');
                    },
                    child: Text(
                      'Software',
                      style: Stylettext.h16,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      print('Commercial');
                    },
                    child: Text(
                      'Commercial',
                      style: Stylettext.h16,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      print('WebReader');
                    },
                    child: Text(
                      'WebReader',
                      style: Stylettext.h16,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      print('EDU');
                    },
                    child: Text(
                      'EDU',
                      style: Stylettext.h16,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    height: highte/1,
                    width: withe / 12,
                    decoration: BoxDecoration(
                      color: Pinter.btn,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Online Reader',
                        style: Stylettext.h16btn,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
