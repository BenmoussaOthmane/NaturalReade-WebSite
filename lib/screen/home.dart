import 'package:flutter/material.dart';
import 'package:webtest/styletext/colors.dart';
import 'package:webtest/styletext/styletext.dart';
import 'package:webtest/widgets/foter.dart';
import 'package:webtest/widgets/header.dart';
import 'package:webtest/widgets/navbar.dart';
import 'package:easy_localization/easy_localization.dart';

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
                  child: Row(
                    children: [
                      Text(
                        'title'.tr().toString(),
                        style: Stylettext.h16,
                      ),
                      SizedBox(width: 50,),
                      FlatButton(
                        onPressed: (){
                            setState(() {
                              EasyLocalization.of(context).locale= Locale('en','EN');
                            });
                        },
                        child: Text('EN'),
                      ),
                      SizedBox(width: 20,),
                      FlatButton(
                        onPressed: (){
                           setState(() {
                              EasyLocalization.of(context).locale= Locale('fr','FR');
                            });
                        },
                        child: Text('FR'),
                      ),
                    ],
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
