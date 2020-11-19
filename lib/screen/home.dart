import 'package:flutter/material.dart';
import 'package:webtest/styletext/colors.dart';
import 'package:webtest/styletext/styletext.dart';
import 'package:webtest/widgets/foter.dart';
import 'package:webtest/widgets/header.dart';
import 'package:webtest/widgets/navbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pinter.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Navbar(),
                Headar(),
                Foter(),
                Container(
                  padding: const EdgeInsets.only(top: 50,left: 300),
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1,
                  color: Colors.grey[500],
                  child: Text(
                    '© NaturalSoft Ltd. All rights reserved.',
                    style: Stylettext.h16,
                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
